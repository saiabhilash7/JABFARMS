package com.example.springboot.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="Purchase_detaile")
public class BuyCrop {
	
	
	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    @Column(name = "id")
	    private long  id;
	    @Column(name="userid")
	    private long userId;
	    @Column(name="farmerid")
	    private long farmerId;
	    @Column(name="cropid")
	    private long cropId;
	    @Column(name="cropame")
	    private String cropName;
	    @Column(name="quantity")
	    private double quantity;
	    @Column(name="present_price")
	    private double presentPrice;
	    @Column(name="totalprice")
	    private  double totalPrice;
		public long getId() {
			return id;
		}
		public void setId(long id) {
			this.id = id;
		}
		public long getUserId() {
			return userId;
		}
		public void setUserId(long userId) {
			this.userId = userId;
		}
		public long getCropId() {
			return cropId;
		}
		public void setCropId(long cropId) {
			this.cropId = cropId;
		}
		
		public double getQuantity() {
			return quantity;
		}
		public void setQuantity(double quantity) {
			this.quantity = quantity;
		}
		public double getTotalPrice() {
			return totalPrice;
		}
		public void setTotalPrice(double totalPrice) {
			this.totalPrice = totalPrice;
		}
		public String getCropName() {
			return cropName;
		}
		public void setCropName(String cropName) {
			this.cropName = cropName;
		}
		
		public long getFarmerId() {
			return farmerId;
		}
		public void setFarmerId(long farmerId) {
			this.farmerId = farmerId;
		}
		public double getPresentPrice() {
			return presentPrice;
		}
		public void setPresentPrice(double presentPrice) {
			this.presentPrice = presentPrice;
		}
		
	    

}
