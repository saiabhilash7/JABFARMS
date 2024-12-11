package com.example.springboot.repository;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.springboot.models.BuyCrop;

@Repository
public interface BuyCropRepository extends JpaRepository<BuyCrop, Long>{
	
	  List<BuyCrop> findByUserId(Long userId);
	  
	 
	  public List<BuyCrop> findByCropId(Long cropId);
	  List<BuyCrop> findByFarmerId(Long farmerId);
}
