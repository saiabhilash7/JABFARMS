package com.example.springboot.service;


import java.util.List;
import java.util.Optional;

import com.example.springboot.models.AddCrop;
import com.example.springboot.models.BuyCrop;
import com.example.springboot.models.User;

public interface UserService {
	
	public String UserRegister(User user);
	public User checkLogin(String email, String password);
	public List<AddCrop> ViewAllCrops();
    public BuyCrop savePurchase(BuyCrop buyCrop);
	public AddCrop getCropById(Long cropId);
	public List<BuyCrop> getUserPurchases(Long userId);
   
	

}
