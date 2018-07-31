package com.CDAC.carservice.services;




import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.CDAC.carservice.model.User;

import com.CDAC.carservice.repository.UserRepository;



@Service
@Transactional
public class UserService {
	
	private final UserRepository userRepository;
	
	UserService (UserRepository userRepository){
		
		this.userRepository = userRepository;
	}
	
		
	
	public void saveUser(User user) {
		
		userRepository.save(user);
		
	}
	
	public User findByEmailAndPassword (String email,String password) {
		
		return userRepository.findByEmailAndPassword(email, password);
	}
	
	
	

}
