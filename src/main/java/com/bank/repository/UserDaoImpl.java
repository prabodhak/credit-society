package com.bank.repository;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.bank.model.User;

import exception.UserNotRegisteredException;

@Repository
public class UserDaoImpl extends HibernateDao<User> implements UserDao {
	
	public User getByUsername(String username) {
		User user = new User();
		String queryString = "from User where username = :username";
		Query query = getSessionFactory().getCurrentSession().createQuery(queryString);
		query.setParameter("username", username);
		user = (User) query.uniqueResult();
		return user;
	}
	
	public boolean checkLogin(String username, String password) throws UserNotRegisteredException {
		
		boolean value = false;
		if(isRegistered(username)) {
			String queryString = "select password from User where username = :username";
			Query query = getSessionFactory().getCurrentSession().createQuery(queryString);
			query.setString("username", username);
			if(password.equals(query.uniqueResult()))
				value = true;
		}
		throw new UserNotRegisteredException();
	}

	public boolean isRegistered(String username) {
		boolean value = false;
		String queryString = "from User where username= :username";
		Query query = getSessionFactory().getCurrentSession().createQuery(queryString);
		query.setString("username", username);
		if(query.uniqueResult() != null)
			value = true;
		return value;
	}

	public boolean changePassword(String username, String oldPassword, String newPassword) throws UserNotRegisteredException {
		boolean value = false;
		if(checkLogin(username, oldPassword)) {
			User user = (User) getByUsername(username);
			user.setPassword(newPassword);
			value = true;
		}		
		return value;
	}

	public void registerUser(String username, String passowrd) {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public Class<User> getDomainClass() {
		return User.class;
	}

}
