package com.example.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.springboot.models.AddCrop;
import com.example.springboot.models.Admin;
import com.example.springboot.models.Expert;
import com.example.springboot.models.Farmer;
import com.example.springboot.models.User;
import com.example.springboot.repository.AdminRepository;
import com.example.springboot.repository.ExpertRepository;
import com.example.springboot.repository.FarmerRepository;
import com.example.springboot.repository.UserRepository;

@Service
public class AdminServiceImpl implements AdminService {

	
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private FarmerRepository farmerRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private ExpertRepository expertRepository;
	
	@Override
	public Admin checkadminlogin(String uname, String pwd) {
		
		return adminRepository.checkadminlogin(uname, pwd);
	}

	@Override
	public List<Farmer> ViewAllFarmers() {
		// TODO Auto-generated method stub
		return farmerRepository.findAll();
	}
	@Override
	public String verifyFarmer(long id) {
	    Optional<Farmer> optionalFarmer = farmerRepository.findById(id);

	    if (optionalFarmer.isPresent()) {
	        Farmer user = optionalFarmer.get();
	        user.setVerified(true);
	        farmerRepository.save(user);
	        
	        return "User verified successfully";
	    } else {
	        return "User not found. Please try again.";
	    }
	}
	@Override
	public List<User> ViewAllUsers() {
		// TODO Auto-generated method stub
		return userRepository.findAll();
	}
	@Override
	public String verifyUser(long id) {
	    Optional<User> optionalUser =  userRepository.findById(id);

	    if (optionalUser.isPresent()) {
	        User user = optionalUser.get();
	        user.setVerified(true);
	        userRepository.save(user);
	        
	        return "User verified successfully";
	    } else {
	        return "User not found. Please try again.";
	    }
	}
	@Override
	public List<Expert> ViewAllExperts() {
		// TODO Auto-generated method stub
		return expertRepository.findAll();
	}
	@Override
	public String verifyExpert(long id) {
	    Optional<Expert> optionalExpert =  expertRepository.findById(id);

	    if (optionalExpert.isPresent()) {
	        Expert expert = optionalExpert.get();
	        expert.setVerified(true);
	        expertRepository.save(expert);
	        
	        return "Expert verified successfully";
	    } else {
	        return "Expert not found. Please try again.";
	  }
	}
	 @Override
     public String  deleteuserbyid(long id) 
     {
    	    Optional<User> user = userRepository.findById(id);

            // If the achievement is found, delete it
            if (user.isPresent()) {
            	userRepository.deleteById(id);  
                return "user Deleted Successfully";
            } else {
                return "user Not Found";
            }
     }
	 @Override
     public String  deleteexpertbyid(long id) 
     {
    	    Optional<Expert> expert = expertRepository.findById(id);

            // If the achievement is found, delete it
            if (expert.isPresent()) {
            	expertRepository.deleteById(id);  
                return "Expert Deleted Successfully";
            } else {
                return "expert Not Found";
            }
     }
	 @Override
     public String  deletefarmerbyid(long id) 
     {
    	    Optional<Farmer> farmer = farmerRepository.findById(id);

            // If the achievement is found, delete it
            if (farmer.isPresent()) {
            	farmerRepository.deleteById(id);  
                return "farmer Deleted Successfully";
            } else {
                return "farmer Not Found";
            }
     }
}
