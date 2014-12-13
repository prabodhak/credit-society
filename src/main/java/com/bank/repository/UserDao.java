package com.bank.repository;

import com.bank.exception.UserNotRegisteredException;
import com.bank.model.User;

public interface UserDao extends GenericDao<User, Long>{
	
	boolean checkLogin(String username, String password) throws UserNotRegisteredException;

	boolean isRegistered(String username);

	boolean changePassword(String username, String oldPassword,
			String newPassword) throws UserNotRegisteredException;
}
