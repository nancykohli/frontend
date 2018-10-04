package com.niit.happybakersbackend.dao;


	import java.util.List;
	import com.niit.happybakersbackend.model.User;

	public interface UserDao {

				public boolean addUser(User user);
				public boolean updateUser(User user);
				public boolean deleteUsery(int userId);
				public List<User> getAllUser();
				public User getUserById(int userId);
				
			}




