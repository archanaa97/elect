package packs.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Contact {

	
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	int id;
	String yname,yemail,ymessage;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getYname() {
		return yname;
	}
	public void setYname(String yname) {
		this.yname = yname;
	}
	public String getYemail() {
		return yemail;
	}
	public void setYemail(String yemail) {
		this.yemail = yemail;
	}
	public String getYmessage() {
		return ymessage;
	}
	public void setYmessage(String ymessage) {
		this.ymessage = ymessage;
	}
	
	}

