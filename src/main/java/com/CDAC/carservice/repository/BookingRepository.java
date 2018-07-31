/**
 * 
 */
package com.CDAC.carservice.repository;

import org.springframework.data.repository.CrudRepository;

import com.CDAC.carservice.model.Booking;

/**
 * @author Shashank
 *
 */
public interface BookingRepository extends CrudRepository<Booking, Integer> {

}
