package packs.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import packs.model.Cateogry;


@Repository
public  class CateogryDAOimpl implements CateogryDAO{

	@Autowired
	SessionFactory sfact;
	Session sess;
	Transaction tx;
	Cateogry pr;
	
	List <Cateogry> data;
	
	public CateogryDAOimpl()
	{
		data=new ArrayList<Cateogry>();
	}
	
	
	public void saveCateogry(Cateogry ob2) {
		
		sess=sfact.openSession();
		tx=sess.beginTransaction();
		sess.save(ob2);
		tx.commit();
	}


	public List<Cateogry> showallCat() {
		sess=sfact.openSession();
		Query q=sess.createQuery("from Cateogry");
		data=q.list();
		return data;
	}

	

		public void removeCateogry(Cateogry ob3) {
		System.out.println("In remove"+ob3.getId());
		sess=sfact.openSession();
		tx=sess.beginTransaction();
		sess.delete(ob3);
		tx.commit();
		
	}


		
		public void overwrite(Cateogry ob2) {
			
			sess=sfact.openSession();
			tx=sess.beginTransaction();
			sess.update(ob2);
			tx.commit();
			System.out.println("Commited....");
		
		}

		
		public Cateogry getCateogryById(int id) {
			System.out.println("In getCateogry"+id);
			  sess = sfact.openSession();
			data=this.showallCat();
			for(Cateogry c:data)
			{
				System.out.println(""+c.getId());
				if(c.getId()== id)
				{ 
					pr=new Cateogry(c.getId(),c.getName(),c.getDesc());
					return pr;
				}
			}
			sess.close();
			return pr;
		}
}