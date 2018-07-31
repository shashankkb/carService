/**
 * 
 */
package com.CDAC.carservice.services;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.CDAC.carservice.model.Booking;
import com.CDAC.carservice.repository.BookingRepository;

/**
 * @author Shashank
 *
 */
@Service
@Transactional
public class BookingService {
	
	private final BookingRepository bookingRepository;
	
	BookingService (BookingRepository bookingRepository){
		
		this.bookingRepository = bookingRepository;
	}
	
	public void savebooking(Booking booking) {
		bookingRepository.save(booking);
		
		
	}

}
