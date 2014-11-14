package com.bank.repository;

import org.springframework.dao.DataAccessException;

import com.bank.exception.UserNotRegisteredException;
import com.bank.model.User;

public interface UserDao {
	
	User findById(Long id);
	
	void save(User user) throws DataAccessException;

	boolean checkLogin(String username, String password) throws UserNotRegisteredException;

	boolean isRegistered(String username);

	boolean changePassword(String username, String oldPassword,
			String newPassword) throws UserNotRegisteredException;
}
