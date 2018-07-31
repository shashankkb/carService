package com.CDAC.carservice.repository;



import org.springframework.data.repository.CrudRepository;

import com.CDAC.carservice.model.User;

public interface UserRepository extends CrudRepository<User,Integer> {
	
	public User findByEmailAndPassword (String email,String password);
	
	


}
