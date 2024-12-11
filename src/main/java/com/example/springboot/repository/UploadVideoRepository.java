package com.example.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.springboot.models.UploadVideo;

@Repository
public interface UploadVideoRepository extends JpaRepository<UploadVideo, Long> {
	
	public  UploadVideo findById(long id); 
	List<UploadVideo> findByUploadedByExpertId(Long expertId);
}
