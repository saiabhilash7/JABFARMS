package com.example.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.example.springboot.models.AddCrop;
import com.example.springboot.models.BuyCrop;
import com.example.springboot.models.Farmer;
import com.example.springboot.models.UploadVideo;
import com.example.springboot.repository.AddCropRepository;
import com.example.springboot.repository.BuyCropRepository;
import com.example.springboot.repository.FarmerRepository;
import com.example.springboot.repository.UploadVideoRepository;

@Service
public class FarmerServiceImpl  implements FarmerService{
	
	@Autowired
	private FarmerRepository farmerRepository;
	@Autowired
	private UploadVideoRepository uploadvideoRepository;
	@Autowired
	private AddCropRepository addcropRepository;
	@Autowired
	private BuyCropRepository buycropRepository;
	
	

	@Override
	public String FarmerRegister(Farmer farmer) {
		
		farmerRepository.save(farmer);
		return "Farmer Register Successfully";
	}

	@Override
	public Farmer checkLogin(String email, String password) {
		
		return farmerRepository.checkFarmerLogin(email, password);
	}

	@Override
	public List<UploadVideo> ViewAllVideos() {
		 return  uploadvideoRepository.findAll();

		
	}

	@Override
	public UploadVideo ViewVideoById(long id) {
		
		 return uploadvideoRepository.findById(id);  
	}

	@Override
	public String addCrop(AddCrop crop) {
		addcropRepository.save(crop);
		return "Crop Details Saved Successfully";
	}

	@Override
	public List<AddCrop> findByfarmerId(String farmerId) {
		return addcropRepository.findByFarmerId(farmerId);
	}

	@Override
	public String updateCropData(AddCrop crop) {
	    // Retrieve the existing crop from the repository
	    Optional<AddCrop> optionalCrop = addcropRepository.findById(crop.getId());
	    if (optionalCrop.isPresent()) {
	        AddCrop existingCrop = optionalCrop.get();

	        // Update fields
	        existingCrop.setName(crop.getName());
	        existingCrop.setPresentPrice(crop.getPresentPrice());
	        existingCrop.setPreviousPrice(crop.getPreviousPrice());
	        existingCrop.setFertilizerUsed(crop.getFertilizerUsed());
	        existingCrop.setCultivatedLand(crop.getCultivatedLand());
	        existingCrop.setExpectedHarvest(crop.getExpectedHarvest());
	        existingCrop.setCropType(crop.getCropType());
	        existingCrop.setIrrigationMethod(crop.getIrrigationMethod());
	        existingCrop.setSoilType(crop.getSoilType());
	        existingCrop.setSeasionType(crop.getSeasionType());

	        // Save updates
	        addcropRepository.save(existingCrop);
	        return "Crop Data Updated Successfully";
	    } else {
	        return "Crop with ID " + crop.getId() + " not found";
	    }
	    
	}

	@Override
	public Optional<AddCrop> findbyId(long id) {
		    // Find the crop by its ID
		    return addcropRepository.findById(id);
		}

	 @Override
     public String  deleteCropbyid(long id) 
     {
    	    Optional<AddCrop> achievementOpt = addcropRepository.findById(id);

            // If the achievement is found, delete it
            if (achievementOpt.isPresent()) {
            	addcropRepository.deleteById(id);  
                return "Crop Deleted Successfully";
            } else {
                return "Crop Not Found";
            }
     }
	 public List<BuyCrop> getPurchasesById(Long farmerId) {
	        return buycropRepository.findByFarmerId(farmerId);
	    }
	 
	
	
	
		
	
}
