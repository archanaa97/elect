package packs.dao;

import java.util.List;

import packs.model.Cateogry;


public interface CateogryDAO {

	 public void saveCateogry(Cateogry ob2);
	 public void overwrite(Cateogry ob2);
	 List<Cateogry> showallCat();
     public Cateogry getCateogryById(int id);
     public void removeCateogry(Cateogry ob3);
}
