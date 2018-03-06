package packs.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import packs.model.Contact;

@Repository
public class ContactDAOimpl implements ContactDAO{

	@Autowired
	SessionFactory sfact;
	Session sess;
	Transaction tx;
	public void saveContact(Contact ob1) {
		sess=sfact.openSession();
		tx=sess.beginTransaction();
		sess.save(ob1);
		tx.commit();
	}
	

}
