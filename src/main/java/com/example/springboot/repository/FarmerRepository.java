package com.example.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;


import com.example.springboot.models.Farmer;

@Repository
public interface FarmerRepository extends JpaRepository<Farmer, Long> {
	
	@Query("select f from Farmer f where f.email=?1 and f.password=?2")
	public Farmer checkFarmerLogin(String email, String password);
	
	

}
