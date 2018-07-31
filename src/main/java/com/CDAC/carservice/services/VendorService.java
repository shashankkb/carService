package com.CDAC.carservice.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.CDAC.carservice.model.Vendors;
import com.CDAC.carservice.repository.VendorRepository;

@Service
@Transactional
public class VendorService {
	
private final VendorRepository vendorRepository;
	
	VendorService (VendorRepository vendorRepository){
		this.vendorRepository = vendorRepository;
		
	}
	
	public Vendors singlevendor (int vendorid) {
		Optional<Vendors> vendor = vendorRepository.findById(vendorid);
		Vendors vend = vendor.get();
		
		return vend;
		
	}
	
public List<Vendors> findByVendorcityAndVendormodel(String vendorcity,String vendormodel){
		
		List<Vendors> vendors = new ArrayList<Vendors>();
		for(Vendors vendor:vendorRepository.findByVendorcityAndVendormodel(vendorcity, vendormodel))
		vendors.add(vendor);
		return vendors;
	}

public void savevendor(Vendors vendors) {
	
	
	vendorRepository.save(vendors);
}




}
