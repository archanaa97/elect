package packs.dao;

import java.util.List;

import packs.model.Product;

public interface ProductDAO 
{
     public void saveProduct(Product ob2);
     public void overwrite(Product ob2);
     List<Product> showall();
     public Product getProductById(int id);
     public void removeProduct(Product ob2);
     public void editProduct(Product ob2);
}
