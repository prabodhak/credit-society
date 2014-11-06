package com.bank.repository;

import com.bank.model.User;

import exception.UserNotRegisteredException;

public interface UserDao extends Dao<User>{

	boolean checkLogin(String username, String password) throws UserNotRegisteredException;

	boolean isRegistered(String username);

	boolean changePassword(String username, String oldPassword,
			String newPassword) throws UserNotRegisteredException;

	void registerUser(String username, String passowrd);
}
