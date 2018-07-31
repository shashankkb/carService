package com.CDAC.carservice.controller;

import javax.mail.*;
import javax.mail.internet.*;
import javax.mail.internet.MimeMessage;


import java.util.Date;

import java.util.Properties;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.CDAC.carservice.model.Booking;
import com.CDAC.carservice.model.User;
import com.CDAC.carservice.model.Vendors;
import com.CDAC.carservice.services.BookingService;
import com.CDAC.carservice.services.UserService;
import com.CDAC.carservice.services.VendorService;


@Controller
public class ApplicationController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private VendorService vendorService;
	
	@Autowired
	private BookingService bookingservice;
	
	@RequestMapping("/")
	public String welcome(HttpServletRequest request ) {
		request.setAttribute("mode","MODE_HOME");
		HttpSession session = request.getSession();
		request.setAttribute("session",session.getAttribute("name"));
				
		return "index";
	}
	
	
	
	
	@PostMapping("/save-user")
	public String registerUser(@ModelAttribute User user,BindingResult bindingResult, HttpServletRequest request) {
		userService.saveUser(user);
		request.setAttribute("mode","MODE_HOME");
		
		return "index";
	}
	
	@RequestMapping("/showvendors")
	public String showvendors(@ModelAttribute Vendors vendor,HttpServletRequest request) {
		
		request.setAttribute("vendors",vendorService.findByVendorcityAndVendormodel(vendor.getVendorcity(), vendor.getVendormodel()));
		
		Object showvendor = request.getAttribute("vendors");
		request.setAttribute("showthem", showvendor);
		return "vendorlist";
	}
	
	
	
	@RequestMapping("/singlevendor")
	public String singlevendor(@RequestParam int vendorid, HttpServletRequest request) {
		HttpSession session= request.getSession();
		Object name =  session.getAttribute("name");
				
		if(name!=null)
		{
		request.setAttribute("vendors",vendorService.singlevendor(vendorid));
		request.setAttribute("id",session.getAttribute("id"));
		request.setAttribute("username",session.getAttribute("name"));
		
		return "singlevendor";
		}else {
			
			return "redirect:/login-user";
		}
	}
	
	@RequestMapping("/login-user")
	public String loginuser(@ModelAttribute User user,HttpServletRequest request) {
		if (userService.findByEmailAndPassword(user.getEmail(), user.getPassword())!=null) {
	
		User userdetail = userService.findByEmailAndPassword(user.getEmail(), user.getPassword());
		
		System.out.println();
		request.setAttribute("success", "LOGIN_SUCCESS");
		HttpSession session = request.getSession();
		session.setAttribute("id",userdetail.getId());
		session.setAttribute("name",user.getEmail());
		return "index";
		}
		else {
			request.setAttribute("failed","LOGIN_FAILED");
			return "index";
		}
	}
	
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		session.invalidate();
		return "index";
	}
	
	@RequestMapping("/booking")
	public String booking(@ModelAttribute Booking booking,BindingResult bindingResult, HttpServletRequest request) {
		String firstmail = (String) booking.getBookingvendoremail();
		String secondmail = (String) booking.getUseremail();
		
		bookingservice.savebooking(booking);
		Random rand = new Random();
		int otp = rand.nextInt(10000);
		try{
            String host ="smtp.gmail.com" ;
            String user = "buildsexy@gmail.com";
            String pass = "1216310063princy";
            String to;
            for(int i=1;i<=2;i++) {
            	if (i==1) {
            		to = firstmail;
            	}else {
            		
            		to = secondmail;
            	}
            
            
            String from = "buildsexy@gmail.com";
            String subject = "Booking Confirmation mail.";
            String messageText = "Hello, "+to+". Here is your OTP "+otp+". Please share it with our vendor to confirm your booking.";
            boolean sessionDebug = false;

            Properties props = System.getProperties();

            props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.host", host);
            props.put("mail.smtp.port", "587");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.starttls.required", "true");

            java.security.Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
            Session mailSession = Session.getDefaultInstance(props, null);
            mailSession.setDebug(sessionDebug);
            Message msg = new MimeMessage(mailSession);
            msg.setFrom(new InternetAddress(from));
            InternetAddress[] address = {new InternetAddress(to)};
            msg.setRecipients(Message.RecipientType.TO, address);
            msg.setSubject(subject); msg.setSentDate(new Date());
            msg.setText(messageText);

           Transport transport=mailSession.getTransport("smtp");
           transport.connect(host, user, pass);
           transport.sendMessage(msg, msg.getAllRecipients());
           transport.close();
           }
            
        }catch(Exception ex)
        {
            System.out.println(ex);
        }
		request.setAttribute("booked","BOOKING_SUCCESSFUL");
		return "index";
	}
	
	public String registervendor (@ModelAttribute Vendors vendors,BindingResult bindingResult, HttpServletRequest request) {
		vendorService.savevendor(vendors);
		return "";
	}
	

}
