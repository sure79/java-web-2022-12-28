package service;

import database.DAO.UserDAO;

public class UserService {
	
	private UserDAO UserDao;
	
	public UserService () {
		
		this.UserDao = new UserDAO();
	}

}
