package packs.controllers;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;


import packs.dao.CateogryDAO;
import packs.dao.ContactDAO;

import packs.dao.ProductDAO;
import packs.dao.UserDAO;
import packs.dao.addcartDAO;
import packs.model.Cateogry;
import packs.model.Contact;

import packs.model.User;
import packs.model.addcart;
import packs.model.Product;


@Controller
public class controllerclass {

	@Autowired
	UserDAO dao;

	@Autowired
	ContactDAO dao1;

	@Autowired
	ProductDAO dao2;
	
	@Autowired
	CateogryDAO dao3;

    @Autowired 
    addcartDAO dao4;
	
	List<Product>Products;

	List<Cateogry>Cateogrys;
	
	
	
	public String LoginTest()
	{
	    
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null && !auth.getName().equals("anonymousUser"))
	    {    
	    	
	    	System.out.println(auth.getName());
	
	    	return "true";
	    }
		
	    System.out.println("false");
	    
		return "false";
	}

	
	@RequestMapping("/")
	public String home()
	{

		return "userindex";
		
	}

	@RequestMapping("/userindex")
	public String Home()
	{
		return "userindex";
	}

 
	@RequestMapping("/Aboutus")
	public String About()
	{

        return "Aboutus";
	}

   @RequestMapping("/signin")
    public String signin()
    {
	    return "signin";
    }
   
 
/*   usercategory*/
   
   
    @RequestMapping("/UserCategory")
    public String UserCategory()
    {
	    return "Usercategory";
    }

@RequestMapping("/addcart")
public String showusercategory(ModelMap map)
{
	 Products =dao2.showall();
	
	map.addAttribute("cart",Products);
	return "UserCategory";
}

/* SIGNUP */

@RequestMapping("/signup")
public String signup()
{
	return "signup";
}

@ModelAttribute("addNewUser")
public User createUser()
{
	return new User();
}
@RequestMapping(value="/addUser", method=RequestMethod.POST)
public ModelAndView createNewUser(  @ModelAttribute("addUser")User ob,BindingResult result)
{
	dao.saveUser(ob);
	return new ModelAndView("userindex","r",null);
}

/*CONTACT US*/

@RequestMapping("/ContactUs")
public String ContactUs()
{

return "ContactUs";

}
@ModelAttribute("addNewContact")
public Contact createContact()
{
	return new Contact();
}
@RequestMapping(value="/addContact", method=RequestMethod.POST)
public ModelAndView createNewContact(@ModelAttribute("addContact")Contact ob1,BindingResult result1)
{
	dao1.saveContact(ob1);
	return new ModelAndView("userindex","r",null);
}




@RequestMapping("/cateogry")
public String cateogry()
{
	return "cateogry";
}



/*@RequestMapping("/edit")
public String edit()
{
	return "edit";
}
*/

/*PRODUCT*/

@RequestMapping("/Product")
public String Product()
{
     return "Product"; 
}

@ModelAttribute("addNewProduct")
public Product createProduct()
{
    return new Product();

}
@RequestMapping(value="/addProduct", method=RequestMethod.POST)
public ModelAndView createNewProduct(@ModelAttribute("addProduct")Product ob2,BindingResult result, HttpSession session)
{

	ServletContext context=session.getServletContext();
	String path=context.getRealPath("/");

	File file=new File(path+"/resources/"+ob2.getId()+".jpg");
	System.out.println(path);
	try
	{
    byte arr[]=ob2.getImage().getBytes();
	BufferedOutputStream bos=new BufferedOutputStream(new FileOutputStream(file));
	bos.write(arr);
	
    bos.close();
    
    Cloudinary cloudinary = new Cloudinary(ObjectUtils.asMap(
    		  "cloud_name", "electronics",
    		  "api_key", "937936123584583",
    		  "api_secret", "PqI2OJQxnXhK_WmKl3CqVtsyCj0"));
    
    Map uploadResult = cloudinary.uploader().upload(file, ObjectUtils.emptyMap());
	
		System.out.println(uploadResult);
    
		ob2.setImageUrl(uploadResult.get("secure_url").toString());
	}
	catch(Exception ex)
	{
		ex.printStackTrace();
		System.out.println("Multipart exception"+ex);
	}
	
	dao2.saveProduct(ob2);
	
	return new ModelAndView("thanku","r",null);
	}



@RequestMapping("/Retrieve")
public String showproduct(ModelMap map)
{
	 Products =dao2.showall();
	
	map.addAttribute("listData",Products);
	return "Retrieve";
}



/*Remove Product*/
    @RequestMapping("/remove/{id}")
    public String removeProduct(@PathVariable("id") int id, HttpSession session){
		
		ServletContext context=session.getServletContext();
		String path=context.getRealPath("/");
		Path p=Paths.get(path+"./resources/"+id+".jpg");
		if(Files.exists(p))
		{
			try{
			Files.delete(p);
			}
			catch(Exception e)
			{
				
				e.printStackTrace();
			}
		}
		System.out.println("id  "+id);
		Product pro=dao2.getProductById(id);
		dao2.removeProduct(pro);
        return "redirect:/Retrieve";
    }
    
    @RequestMapping("/edit/{id}")
    public String editProduct(@PathVariable("id") int id,Model m)
    {
    	Product pro=dao2.getProductById(id);
    	m.addAttribute("product",pro);
    	return "edit";
    }
    
    @RequestMapping(value= "/editProduct", method=RequestMethod.POST)
	public String editProduct(@ModelAttribute("editProduct")Product ob2){
		
		dao2.overwrite(ob2);
		return "Retrieve";
	}
    
   
    
    
/*Cateogry*/
    
@ModelAttribute("addNewCateogry")
public Cateogry addcat()
{
	return new Cateogry();
}
@RequestMapping(value="/addCateogry", method=RequestMethod.POST)
public ModelAndView createNewCateogry(@ModelAttribute("addCateogry")Cateogry ob2,BindingResult result)
{
	dao3.saveCateogry(ob2);
	return new ModelAndView("thanku","r",null);
}

@RequestMapping("/All")
public String  showCat(ModelMap map)
{
	Cateogrys=dao3.showallCat();
	map.addAttribute("cats", Cateogrys);
	return "AllCategory";
}
    @RequestMapping("/removec/{id}")
    public String removeCateogry(@PathVariable("id") int id){
    	
    	System.out.println("id"+ id );
		Cateogry pr=dao3.getCateogryById(id);
		dao3.removeCateogry(pr);
        return "redirect:/All";
    }

    @RequestMapping("/editc/{id}")
    public String editCateogry(@PathVariable("id") int id,Model m)
    {
    	Cateogry pr=dao3.getCateogryById(id);
    	m.addAttribute("cateogry",pr);
    	return "editCategory";
    }
    
    @RequestMapping(value= "/editCateogry", method=RequestMethod.POST)
	public String editCateogry(@ModelAttribute("editCateogry")Cateogry ob2){
		
		dao3.overwrite(ob2);
		return "AllCategory";
	}
    
  /*  for user*/
    
    @RequestMapping("/ALL")
    public String showuser(ModelMap map)
    {
    	
    	Products =dao2.showall();
    	map.addAttribute("listData",Products);
    	return "ALL";
    }
    
    @RequestMapping("descp/{id}")
    public String showuser(@PathVariable("id") int id,HttpSession session,ModelMap m)
    {
    	Product pro=dao2.getProductById(id);
    	m.addAttribute("desc",pro);
    	return "user";
    }
    
    @RequestMapping(value="/AddCartToDB",method=RequestMethod.POST)
	public ModelAndView AddCartToDB( @RequestParam("quantity") int q,@RequestParam("id")int abc  )
	{
		ModelAndView mv = new ModelAndView("redirect:/cart");

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 if (auth != null && !auth.getName().equals("anonymousUser"))
		 {
	
			 String currUser=auth.getName();
		
			 addcart a = new addcart();
			 
			 a.setUsername(currUser);
			 a.setQty(q);
			 
			 Product p = dao2.getProductById(abc);
			 
			 a.setDesc(p.getDesc());
			 
			 a.setPid(abc);
			/* a.setPname(p.getName());*/
			 a.setPrice(p.getPrice() + "");
			 
			 
			dao4.saveaddcart(a);
		 }
	     
		 return mv;
	}	
    
    
    @RequestMapping("/ProdAll")
    public String showProductdesc(ModelMap map)
    {
    	
    	Products =dao2.showall();
    	map.addAttribute("listData",Products);
    	return "ProdAll";
    }
    
    @RequestMapping("proddescp/{id}")
    public String showProductdesc(@PathVariable("id") int id,HttpSession session,ModelMap m)
    {
    	Product pro=dao2.getProductById(id);
    	m.addAttribute("proddesc",pro);
    	return "ProductDesc";
    }
    
	}

