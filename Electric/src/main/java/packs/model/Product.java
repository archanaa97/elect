package packs.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
public class Product {
	
	@Id @GeneratedValue(strategy=GenerationType.AUTO)
	int id;
	String name,desc;
    String quantity;
    int price;   
	
	
	@Transient
	MultipartFile image;
	
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	String imageUrl;
	
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getName() {
		return name;
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
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	
	public Product() {
		super();
	}
	public Product(int id, String name, String desc, String quantity, int price, MultipartFile image, String imageUrl) {
		super();
		this.id = id;
		this.name = name;
		this.desc = desc;
		this.quantity = quantity;
		this.price = price;
		this.image = image;
		this.imageUrl = imageUrl;
	}
	

}
