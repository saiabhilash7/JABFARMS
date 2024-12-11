package com.example.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.springboot.models.AddCrop;

@Repository
public interface AddCropRepository extends JpaRepository<AddCrop, Long> {
	
	public List<AddCrop> findByFarmerId(String farmerId);
	
	
}
