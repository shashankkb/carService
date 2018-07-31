/**
 * 
 */
package com.CDAC.carservice.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Shashank
 *
 */
@Entity
@Table(name="booking")
public class Booking {
	
	@Id
	private int bookingid;
	private int bookingvendorid;
	private String bookingvendorname;
	private String bookingvendoremail;
	private long bookingvendorcontact;
	private String bookingvendoraddress;
	private int userid;
	private String useremail;
	
	public Booking() {
		
		
		
	}
	
	
	public Booking(int bookingid, int bookingvendorid, String bookingvendorname, String bookingvendoremail,
			long bookingvendorcontact, String bookingvendoraddress, int userid, String useremail) {
		super();
		this.bookingid = bookingid;
		this.bookingvendorid = bookingvendorid;
		this.bookingvendorname = bookingvendorname;
		this.bookingvendoremail = bookingvendoremail;
		this.bookingvendorcontact = bookingvendorcontact;
		this.bookingvendoraddress = bookingvendoraddress;
		this.userid = userid;
		this.useremail = useremail;
	}
	
	
	
	public int getBookingid() {
		return bookingid;
	}
	public void setBookingid(int bookingid) {
		this.bookingid = bookingid;
	}
	public int getBookingvendorid() {
		return bookingvendorid;
	}
	public void setBookingvendorid(int bookingvendorid) {
		this.bookingvendorid = bookingvendorid;
	}
	public String getBookingvendorname() {
		return bookingvendorname;
	}
	public void setBookingvendorname(String bookingvendorname) {
		this.bookingvendorname = bookingvendorname;
	}
	public String getBookingvendoremail() {
		return bookingvendoremail;
	}
	public void setBookingvendoremail(String bookingvendoremail) {
		this.bookingvendoremail = bookingvendoremail;
	}
	public long getBookingvendorcontact() {
		return bookingvendorcontact;
	}
	public void setBookingvendorcontact(long bookingvendorcontact) {
		this.bookingvendorcontact = bookingvendorcontact;
	}
	public String getBookingvendoraddress() {
		return bookingvendoraddress;
	}
	public void setBookingvendoraddress(String bookingvendoraddress) {
		this.bookingvendoraddress = bookingvendoraddress;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}


	@Override
	public String toString() {
		return "Booking [bookingid=" + bookingid + ", bookingvendorid=" + bookingvendorid + ", bookingvendorname="
				+ bookingvendorname + ", bookingvendoremail=" + bookingvendoremail + ", bookingvendorcontact="
				+ bookingvendorcontact + ", bookingvendoraddress=" + bookingvendoraddress + ", userid=" + userid
				+ ", useremail=" + useremail + "]";
	}
	
	
	
	

}
