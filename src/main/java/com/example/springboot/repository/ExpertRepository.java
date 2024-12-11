package com.example.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.springboot.models.Expert;


@Repository
public interface ExpertRepository  extends JpaRepository<Expert, Long>{
	
	
	@Query("select e from Expert e where e.email=?1 and e.password=?2")
	public Expert checkExpertLogin(String email, String password);


}
