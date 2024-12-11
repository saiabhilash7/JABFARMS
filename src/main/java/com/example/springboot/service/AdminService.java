package com.example.springboot.service;

import java.util.List;

import com.example.springboot.models.Admin;
import com.example.springboot.models.Expert;
import com.example.springboot.models.Farmer;
import com.example.springboot.models.User;

public interface AdminService {

	public Admin checkadminlogin(String uname, String pwd);
	public List<Farmer> ViewAllFarmers();
	public String verifyFarmer(long id);
	public List<User> ViewAllUsers();
	public String verifyUser(long id);
	public List<Expert> ViewAllExperts();
	public String verifyExpert(long id);
	public String deleteuserbyid(long id);
	public String deleteexpertbyid(long id);
	public String deletefarmerbyid(long id);
}
