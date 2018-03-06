package packs.controllers;



import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;



import packs.dao.ProductDAO;
import packs.dao.UserDAO;
import packs.dao.addcartDAO;
import packs.model.Product;
import packs.model.User;
import packs.model.addcart;

@RestController
public class RESTController {
	

	@Autowired
	addcartDAO cartdao;
	
	@Autowired
	ProductDAO pdao;
	
	@Autowired
	UserDAO pfdao;
	
	@RequestMapping(value="/deletefromcart",method=RequestMethod.POST)
	public String deletefromcart(@RequestBody String data)
	{
		System.out.println("deletefromcart");
	
		System.out.println(data);
		
		try{
			JSONParser jparr = new JSONParser();
			
			JSONObject inp = (JSONObject)jparr.parse(data);
			
			System.out.println(inp);
			
			int id = Integer.parseInt( inp.get("id").toString() );
			
			
			System.out.println(id);
			
			addcart c = cartdao.getaddcartById(id);
			int q = c.getQty();
			
			Product p=pdao.getProductById(c.getPid());
			
			System.out.println(p);
			
			if( p != null )
			{
				try
				{
					String qty=p.getQuantity();
					int i=Integer.parseInt(qty);
					i=i+q;
					String qty1 = String.valueOf(i);
					p.setQuantity(qty1);
					this.pdao.overwrite(p);
				}
				catch( Exception e )
				{
					e.printStackTrace();
				}
				
			}
			
			cartdao.delete(id);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return "{\"msg\":\"Deleted\"}";
	}
	
	@RequestMapping(value="/DeleteCartItems",method=RequestMethod.POST)
	public String DeleteCartItems()
	{
		System.out.println("DeleteCartItems");
	
		String currUser = "";
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null
	    		&& !auth.getName().equals("anonymousUser"))
	    	currUser = auth.getName();
		
		
		
		for( addcart c : cartdao.showall() )
		{
			if( c.getUsername().equals(currUser) )
			{
		
				
			int a=c.getId();
			cartdao.delete(a);
				
			}
			
		}
		return "{\"msg\":\"Deleted Items\"}";
	}

	
	
	@RequestMapping(value="/getAllCartItems",method=RequestMethod.POST)
	public String getAllCartItems()
	{
		String currUser = "";
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null && !auth.getName().equals("anonymousUser"))
	    	currUser = auth.getName();

		JSONArray jarr = new JSONArray();
		
		for(addcart c : cartdao.showall())
		{
			if(c.getUsername().equals(currUser))
			{
				JSONObject jobj = new JSONObject();

				System.out.println("C= "+c.getPid());
				Product p = pdao.getProductById(c.getPid());
				if(p==null)
					continue;
				System.out.println("Id = "+p.getId());
				System.out.println("Name= "+p.getName());
				jobj.put("id", c.getId());
				jobj.put("qty", c.getQty());
				jobj.put("price" , p.getPrice());
				jobj.put("img" , p.getImage());
				jobj.put("desc", p.getDesc());
			 
				jobj.put("pname", p.getName());
				jobj.put("shipaddr", c.getShippingaddress());
				jobj.put("billaddr", c.getBillingaddress());

				System.out.println(jobj);
				
				jarr.add(jobj);
			}
		}
		
		System.out.println(jarr.toString());
		
		System.out.println("GHJ");
		
		return jarr.toString();
	}

	@RequestMapping(value="/getAddress",method=RequestMethod.GET)
	public String getAddress()
	{
		System.out.println("getAddress");
		
		String currUser = "";
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null && !auth.getName().equals("anonymousUser"))
	    	currUser = auth.getName();
	    
	    JSONObject jobj = new JSONObject();
			
		for( User p : pfdao.getAllUser())
		{
			
			if( p.getFname().equals(currUser))
			{	
				String addr = p.getAddress();
				
				System.out.println(addr);
				jobj.put("billaddr", p.getAddress());
				jobj.put("shipaddr", p.getAddress());
				
				
				return jobj.toJSONString();
			}
			
		}
		
		return jobj.toJSONString();
	}
	
	@RequestMapping(value="/UpdateCartToDB",method=RequestMethod.POST)
	public String UpdateCartToDB(@RequestBody String data)
	{
		System.out.println("UpdateCartToDB");
		
		String currUser = "";
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null && !auth.getName().equals("anonymousUser"))
	    	currUser = auth.getName();
		
	    System.out.println(data);
				
		try{
			JSONParser jparr = new JSONParser();
			
			JSONObject inp = (JSONObject)jparr.parse(data);
			
			System.out.println(inp);

			String ship = inp.get("ship").toString();
			String bill = inp.get("bill").toString();
			cartdao.update(currUser, ship, bill);
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return "{\"msg\":\"Updated\"}";
	    
	    
	}
	
}
