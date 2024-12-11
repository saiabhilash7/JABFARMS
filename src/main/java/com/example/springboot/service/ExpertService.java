package com.example.springboot.service;



import java.util.List;

import com.example.springboot.models.Expert;
import com.example.springboot.models.UploadVideo;


public interface ExpertService {
	
	public String ExpertRegister(Expert expert);
	public Expert checkLogin(String email, String password);
	public String addvideo(UploadVideo video);
	public UploadVideo findById(long id);
	public List<UploadVideo> findByExpertId(long id);
	
	
	

}
