package com.example.springboot.service;


import java.util.List;
import java.util.Optional;

import com.example.springboot.models.AddCrop;
import com.example.springboot.models.BuyCrop;
import com.example.springboot.models.Farmer;
import com.example.springboot.models.UploadVideo;

public interface FarmerService {
	
	public String FarmerRegister(Farmer farmer);
	public Farmer checkLogin(String email, String password);
	public List<UploadVideo> ViewAllVideos();
	public UploadVideo ViewVideoById(long id);
	public String addCrop(AddCrop crop);
	public List<AddCrop> findByfarmerId(String farmerId);
	public String updateCropData(AddCrop crop);
	public Optional<AddCrop> findbyId(long id);
	public String deleteCropbyid(long id);
	public List<BuyCrop> getPurchasesById(Long farmerId);
   
	


}
