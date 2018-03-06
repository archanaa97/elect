package packs.dao;


import java.util.List;



import packs.model.User;

public interface UserDAO {
	public void saveUser(User ob);
	public List<User> getAllUser();
}
