package packs.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;



import packs.model.addcart;

@Repository

@Transactional
public class addcartDAOimpl implements addcartDAO {

	public void overwrite(addcart pp) {
		// TODO Auto-generated method stub
		
	}

	@Autowired
	SessionFactory sfact;
	Session sess;
	Transaction tx;
	addcart cpro;
	
	List <addcart> data;
	
	public addcartDAOimpl()
	{
		data=new ArrayList<addcart>();
	}
	
public void saveaddcart(addcart pp) {
		
	sfact.getCurrentSession().save(pp);
	
	}

public List<addcart> showall() {
	return sfact.getCurrentSession().createQuery("from addcart").list();
}

public addcart getcartById(int id) {
	return (addcart)sfact.getCurrentSession().createQuery("from cart where id = :id").setInteger("id",id).list().get(0);
}

public addcart getaddcartBypname(int pname) {
	System.out.println("In getaddcart"+pname);
	  sess = sfact.openSession();
	data=this.showall();
	for(addcart p:data)
	{
		System.out.println(""+p.getId());
		if(p.getId()== pname)
		{ 
			cpro=new addcart(p.getId(),p.getPname(),p.getDesc(),p.getPrice(),p.getQty());
			return cpro;
		}
	}
	sess.close();
	return cpro;
}
	

	

	
	public void editaddcart(addcart pp) {
		
		sess=sfact.openSession();
		tx=sess.beginTransaction();
		sess.update(pp);
		tx.commit();
		
	}	

   
	public List<addcart> getAllCart() {
		return (List<addcart>)this.sfact.getCurrentSession().createQuery("from addcart").list();	
	}

	@Override
	public void update(String user, String ship,String bill) {
		this.sfact.getCurrentSession().createQuery("update addcart set shippingaddress = :ship, billingaddress= :bill  where username=:user").setString("ship", ship).setString("bill", bill).setString("user", user).executeUpdate();
		
	}

	public void delete(int pdid) {
		this.sfact.getCurrentSession().createQuery("delete from addcart where id=:id").setInteger("id", pdid).executeUpdate();
		
	}
	public void update(addcart c) {
		this.sfact.getCurrentSession().update(c);
		
	}

	@Override
	public addcart getaddcartById(int id) {
		// TODO Auto-generated method stub
		return (addcart)sfact.getCurrentSession().createQuery("from addcart where id = :id").setInteger("id",id).list().get(0);
	}

	

	
}
