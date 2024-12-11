package com.example.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.springboot.models.AddCrop;
import com.example.springboot.models.BuyCrop;
import com.example.springboot.models.User;
import com.example.springboot.repository.AddCropRepository;
import com.example.springboot.repository.BuyCropRepository;
import com.example.springboot.repository.UserRepository;

@Service
public class UserServiceImpl  implements UserService{
	
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private AddCropRepository addcropRepository;
	
	@Autowired
	private BuyCropRepository buycropRepository;

	@Override
	public String UserRegister(User user) {
		userRepository.save(user);
		return "User Register Successfully";
	}

	@Override
	public User checkLogin(String email, String password) {
		
		return userRepository.checkUserLogin(email, password);
	}

	@Override
	public List<AddCrop> ViewAllCrops() {
		
		return addcropRepository.findAll();
	}

	@Override
	public BuyCrop savePurchase(BuyCrop buyCrop) {
	    return buycropRepository.save(buyCrop);
	}

	@Override
	public AddCrop getCropById(Long cropId) {
	    return addcropRepository.findById(cropId).orElse(null);
	}

	public List<BuyCrop> getUserPurchases(Long userId) {
	    return buycropRepository.findByUserId(userId); // Fetch all purchases for the user
	}
	
}
