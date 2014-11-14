package com.bank.repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.bank.exception.UserNotRegisteredException;
import com.bank.model.User;

@Repository
public class UserDaoImpl implements UserDao {
	
	@PersistenceContext
	EntityManager em;
	
	public User getByUsername(String username) {
		User user = new User();
		String queryString = "from User where username = :username";
		Query query = em.createQuery(queryString);
		query.setParameter("username", username);
		user = (User) query.getSingleResult();
		return user;
	}
	
	public boolean checkLogin(String username, String password) throws UserNotRegisteredException {
		
		boolean value = false;
		if(isRegistered(username)) {
			String queryString = "select password from User where username = :username";
			Query query = this.em.createQuery(queryString);
			query.setParameter("username", username);
			if(password.equals(query.getSingleResult()))
				value = true;
		}
		throw new UserNotRegisteredException();
	}

	public boolean isRegistered(String username) {
		boolean value = false;
		String queryString = "from User where username= :username";
		Query query = this.em.createQuery(queryString);
		query.setParameter("username", username);
		if(query.getResultList() != null)
			value = true;
		return value;
	}

	public boolean changePassword(String username, String oldPassword, String newPassword) throws UserNotRegisteredException {
		boolean value = false;
		if(checkLogin(username, oldPassword)) {
			User user = (User) getByUsername(username);
			user.setPassword(newPassword);
			save(user);
			value = true;
		}		
		return value;
	}

	@Override
	public User findById(Long id) {
        return em.find(User.class, id);
	}

	@Override
	public void save(User user) throws DataAccessException {
		if (user.getId() == null) {
    		this.em.persist(user);     		
    	}
    	else {
    		this.em.merge(user);    
    	}
		
	}

}
