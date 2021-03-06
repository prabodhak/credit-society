package com.bank.service;

import com.bank.exception.UserNotRegisteredException;
import com.bank.model.Address;
import com.bank.model.User;

public interface UserService {
	
	User getByUsername(String username);

	boolean checkLogin(String username, String password) throws UserNotRegisteredException;

	boolean checkIsRegistered(String username);

	boolean changePassword(String username, String oldPassword,
			String newPassword);

	void registerUser(String username, String passowrd);

	void addAddress(Address address);

	void deleteAddress(Long addressId);

	void setCurrentUser(User currentUser);

	User getCurrentUser();

	void update(User user);
	
	void save(User user);
}
