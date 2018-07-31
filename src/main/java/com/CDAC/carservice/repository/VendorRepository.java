package com.CDAC.carservice.repository;


import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.CDAC.carservice.model.Vendors;


public interface VendorRepository extends CrudRepository<Vendors, Integer> {

	List<Vendors> findByVendorcityAndVendormodel(String vendorcity,String vendormodel);
	
}
