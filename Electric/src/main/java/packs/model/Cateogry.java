package packs.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Cateogry {
	
@Id @GeneratedValue(strategy=GenerationType.AUTO)
	int id;
String name,desc;


public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public Cateogry(int id, String name, String desc) {
	super();
	this.id = id;
	this.name = name;
	this.desc = desc;
}
public void setName(String name) {
	this.name = name;
}
public String getDesc() {
	return desc;
}
public void setDesc(String desc) {
	this.desc = desc;
}
public Cateogry() {
	super();
}

}

