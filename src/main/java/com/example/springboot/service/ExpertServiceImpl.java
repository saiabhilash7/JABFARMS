package com.example.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.example.springboot.models.Expert;
import com.example.springboot.models.UploadVideo;
import com.example.springboot.repository.ExpertRepository;
import com.example.springboot.repository.UploadVideoRepository;

@Service
public class ExpertServiceImpl implements ExpertService {

	
	
	@Autowired
	public ExpertRepository  expertRepository;
	
	@Autowired
	public UploadVideoRepository uploadvideoRepository;
	
	@Override
	public String ExpertRegister(Expert expert) {
		expertRepository.save(expert);
		return "Expert Register Successfully";
	}

	@Override
	public Expert checkLogin(String email, String password) {
		
		return expertRepository.checkExpertLogin(email, password);
	}

	@Override
	public String addvideo(UploadVideo video) {
		uploadvideoRepository.save(video);
		return "Video Saved Successfully";
	}

	@Override
	public UploadVideo findById(long id) {
	    return uploadvideoRepository.findById(id);
	}

	public List<UploadVideo> findByExpertId(long uploadedByExpertId) {
	    return uploadvideoRepository.findByUploadedByExpertId(uploadedByExpertId);
	
	}
	


	}


