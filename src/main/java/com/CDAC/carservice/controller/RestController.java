package com.CDAC.carservice.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestParam;

import com.CDAC.carservice.model.User;
import com.CDAC.carservice.services.UserService;

@org.springframework.web.bind.annotation.RestController
public class RestController {
	
	@Autowired
	private UserService usersService;
	
	
	
	@GetMapping("/save-user")
	public String saveUser(@RequestParam String firstname, @RequestParam String lastname,@RequestParam long contact,@RequestParam String email, @RequestParam String address, @RequestParam String password) {
		
		User user = new User (firstname, lastname, contact, email, address, password);
		
		usersService.saveUser(user);
		return "user saved";
	}
	

}
