package com.example.springboot.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="Crop_detailed")
public class AddCrop {
	

	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    @Column(name = "id")
	    private Long id;
	    
	    @Column(name="farmerId",nullable=false) 
	    private String farmerId;
	    
	    @Column(name = "name",nullable=false)
	    private String name;   
	    
	    @Column(name = "crop_type",nullable=false)
	    private String cropType; 
	    
	    @Column(name = "cultivated_land",nullable=false)
	    private String  cultivatedLand; 
	    
	    @Column(name = "soil_type")
	    private String soilType;
	    
	    @Column(name="seasionType",nullable=false)
	    private String seasionType;
	    
	    @Column(name = "expectedHarvest",nullable=false)
	    private String expectedHarvest;
	    
	    @Column(name = "Prevoius_price",nullable=false)
	    private String previousPrice;  
	    
	    @Column(name = "Present_price",nullable=false)
	    private String presentPrice;  
	    
	    @Column(name = "Fertilizer",nullable=false)
	    private String fertilizerUsed;
	    
	    @Column(name = "irrigationMethod",nullable=false)
	    private String irrigationMethod;
		public Long getId() {
			return id;
		}
		public void setId(Long id) {
			this.id = id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getSoilType() {
			return soilType;
		}
		public void setSoilType(String soilType) {
			this.soilType = soilType;
		}
		public String getExpectedHarvest() {
			return expectedHarvest;
		}
		public void setExpectedHarvest(String expectedHarvest) {
			this.expectedHarvest = expectedHarvest;
		}
		
		public String getFertilizerUsed() {
			return fertilizerUsed;
		}
		public void setFertilizerUsed(String fertilizerUsed) {
			this.fertilizerUsed = fertilizerUsed;
		}
		public String getIrrigationMethod() {
			return irrigationMethod;
		}
		public void setIrrigationMethod(String irrigationMethod) {
			this.irrigationMethod = irrigationMethod;
		}
		public String getCropType() {
			return cropType;
		}
		public void setCropType(String cropType) {
			this.cropType = cropType;
		}
		public String getCultivatedLand() {
			return cultivatedLand;
		}
		public void setCultivatedLand(String cultivatedLand) {
			this.cultivatedLand = cultivatedLand;
		}
		public String getSeasionType() {
			return seasionType;
		}
		public void setSeasionType(String seasionType) {
			this.seasionType = seasionType;
		}
		public String getPreviousPrice() {
			return previousPrice;
		}
		public void setPreviousPrice(String previousPrice) {
			this.previousPrice = previousPrice;
		}
		public String getPresentPrice() {
			return presentPrice;
		}
		public void setPresentPrice(String presentPrice) {
			this.presentPrice = presentPrice;
		}
		public String getFarmerId() {
			return farmerId;
		}
		public void setFarmerId(String farmerId) {
			this.farmerId = farmerId;
		}
		
		
}
