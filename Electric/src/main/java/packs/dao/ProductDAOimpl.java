package packs.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import packs.model.Product;

@Repository
public class ProductDAOimpl implements ProductDAO{

	@Autowired
	SessionFactory sfact;
	Session sess;
	Transaction tx;
	Product pro;
	
	List <Product> data;
	
	public ProductDAOimpl()
	{
		data=new ArrayList<Product>();
	}
	
	
	public void saveProduct(Product ob2) {
		
		sess=sfact.openSession();
		tx=sess.beginTransaction();
		sess.save(ob2);
		tx.commit();
	}


	public void overwrite(Product ob2) {
		sess=sfact.openSession();
		tx=sess.beginTransaction();
		sess.update(ob2);
		tx.commit();
		System.out.println("Commited....");
	

}
   
public List<Product> showall() {
		sess=sfact.openSession();
		Query q=sess.createQuery("from Product");
		data=q.list();
	
		sess.close();
		return data;
	}


public Product getProductById(int id) {
	System.out.println("In getProduct"+id);
	  sess = sfact.openSession();
	data=this.showall();
	for(Product p:data)
	{
		System.out.println(""+p.getId());
		if(p.getId()== id)
		{ 
			pro=new Product(p.getId(),p.getName(),p.getDesc(),p.getQuantity(),p.getPrice(),p.getImage(),p.getImageUrl());
			return pro;
		}
	}
	
//	sess.close();
	
	return pro;
}

	public void removeProduct(Product pp) {
	System.out.println("In remove"+pp.getId());
	sess=sfact.openSession();
	tx=sess.beginTransaction();
	sess.delete(pp);
	tx.commit();
	
}	

	public void editProduct(Product ob2) {
		
		sess=sfact.openSession();
		tx=sess.beginTransaction();
		sess.update(ob2);
		tx.commit();
		
	}	

   
	
}