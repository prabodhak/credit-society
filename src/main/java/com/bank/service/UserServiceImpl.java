package com.bank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bank.exception.UserNotRegisteredException;
import com.bank.model.Address;
import com.bank.model.User;
import com.bank.repository.UserDao;

@Service
public class UserServiceImpl implements UserService {
	
	private UserDao userDao;

	@Autowired
	public UserServiceImpl(UserDao userDao) {
		this.userDao = userDao;
	}

	public User getByUsername(String username) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Transactional(readOnly=true)
	public boolean checkLogin(String username, String password) throws UserNotRegisteredException {
		return userDao.checkLogin(username, password);
	}

	public boolean checkIsRegistered(String username) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean changePassword(String username, String oldPassword,
			String newPassword) {
		// TODO Auto-generated method stub
		return false;
	}

	public void registerUser(String username, String passowrd) {
		// TODO Auto-generated method stub
		
	}

	public void addAddress(Address address) {
		// TODO Auto-generated method stub
		
	}

	public void deleteAddress(Long addressId) {
		// TODO Auto-generated method stub
		
	}

	public void setCurrentUser(User currentUser) {
		// TODO Auto-generated method stub
		
	}

	public User getCurrentUser() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(User user) {
		userDao.save(user);
	}

	@Override
	public void save(User user) {
		System.out.println("Inside save method of UserServiceImpl");
		userDao.save(user);
	}

}
