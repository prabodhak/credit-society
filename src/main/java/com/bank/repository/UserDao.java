package com.bank.repository;

import com.bank.model.User;

public interface UserDao extends Dao<User>{

	boolean checkLogin(String username, String password);

	boolean isRegistered(String username);

	boolean changePassword(String username, String oldPassword,
			String newPassword);

	void registerUser(String username, String passowrd);
}
