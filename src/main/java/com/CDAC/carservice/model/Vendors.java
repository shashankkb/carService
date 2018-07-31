package com.CDAC.carservice.model;



import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.context.annotation.Primary;




@Entity
@Table(name = "vendorsdetails")
@Primary
public class Vendors {

		@Id
		private int vendorid;
		private String vendorname;
		private String vendoremail;
		private String vendoraddress;
		private long vendorcontact;
		private String vendorcity;
		private int vendorrating;
		private String vendormodel;
		private String vendordescription;
		private String vendorimage;
		private String vendorservice;
		
		

		public Vendors() {
			
			
		}
		
		
		
		
		public Vendors(int vendorid, String vendorname, String vendoremail, String vendoraddress, long vendorcontact,
				String vendorcity, int vendorrating, String vendormodel, String vendordescription, String vendorimage,
				String vendorservice) {
			super();
			this.vendorid = vendorid;
			this.vendorname = vendorname;
			this.vendoremail = vendoremail;
			this.vendoraddress = vendoraddress;
			this.vendorcontact = vendorcontact;
			this.vendorcity = vendorcity;
			this.vendorrating = vendorrating;
			this.vendormodel = vendormodel;
			this.vendordescription = vendordescription;
			this.vendorimage = vendorimage;
			this.vendorservice = vendorservice;
		}




		public int getVendorid() {
			return vendorid;
		}
		public void setVendorid(int vendorid) {
			this.vendorid = vendorid;
		}
		public String getVendorname() {
			return vendorname;
		}
		public void setVendorname(String vendorname) {
			this.vendorname = vendorname;
		}
		public String getVendoremail() {
			return vendoremail;
		}
		public void setVendoremail(String vendoremail) {
			this.vendoremail = vendoremail;
		}
		public String getVendoraddress() {
			return vendoraddress;
		}
		public void setVendoraddress(String vendoraddress) {
			this.vendoraddress = vendoraddress;
		}
		public long getVendorcontact() {
			return vendorcontact;
		}
		public void setVendorcontact(long vendorcontact) {
			this.vendorcontact = vendorcontact;
		}
		public String getVendorcity() {
			return vendorcity;
		}
		public void setVendorcity(String vendorcity) {
			this.vendorcity = vendorcity;
		}
		public int getVendorrating() {
			return vendorrating;
		}
		public void setVendorrating(int vendorrating) {
			this.vendorrating = vendorrating;
		}
		public String getVendormodel() {
			return vendormodel;
		}
		public void setVendormodel(String vendormodel) {
			this.vendormodel = vendormodel;
		}
		public String getVendordescription() {
			return vendordescription;
		}



		public void setVendordescription(String vendordecription) {
			this.vendordescription = vendordecription;
		}



		public String getVendorimage() {
			return vendorimage;
		}



		public void setVendorimage(String vendorimage) {
			this.vendorimage = vendorimage;
		}



		public String getVendorservice() {
			return vendorservice;
		}



		public void setVendorservice(String vendorservice) {
			this.vendorservice = vendorservice;
		}




		@Override
		public String toString() {
			return "Vendors [vendorid=" + vendorid + ", vendorname=" + vendorname + ", vendoremail=" + vendoremail
					+ ", vendoraddress=" + vendoraddress + ", vendorcontact=" + vendorcontact + ", vendorcity="
					+ vendorcity + ", vendorrating=" + vendorrating + ", vendormodel=" + vendormodel
					+ ", vendordescription=" + vendordescription + ", vendorimage=" + vendorimage + ", vendorservice="
					+ vendorservice + "]";
		}





		
		
		
		
}
