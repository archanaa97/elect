package packs.dao;

import java.util.List;



import packs.model.addcart;

public interface addcartDAO {
	 public void saveaddcart(addcart pp);
     public void overwrite(addcart pp);
     List<addcart> showall();
     public addcart getaddcartById(int id);
     public void delete(int pp);
	 public void editaddcart(addcart pp);
     public void update( String user, String ship, String bill );
}
