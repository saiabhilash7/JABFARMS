package com.example.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.springboot.models.Admin;
import com.example.springboot.models.Expert;
import com.example.springboot.models.Farmer;
import com.example.springboot.models.User;
import com.example.springboot.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {

	
	 @Autowired
	    private AdminService adminService;

	    

	    // Home Page
	    @GetMapping("/")
	    public ModelAndView home() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("index");
	        return mv;
	    }
	   
	    
	    @GetMapping("/about")
	    public ModelAndView About() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("about");
	        return mv;
	    }
	    @GetMapping("/admindashboard")
	    public ModelAndView admindashboard() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("admindashboard");
	        return mv;
	    }
	    @GetMapping("/contact")
	    public ModelAndView contact() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("contact");
	        return mv;
	    }

	    // Admin Login Page
	    @GetMapping("/adminlogin")
	    public ModelAndView adminlogin() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("adminlogin");
	        return mv;
	    }
	    @GetMapping("adminlogout")
		public ModelAndView  userlogout()
		{
			ModelAndView mv = new ModelAndView();
			mv.setViewName("redirect:/");
			return mv;
		}
	   
	    @PostMapping("/checkadminlogin")
	    public ModelAndView checkadminlogin(HttpServletRequest request, HttpSession session) {
	        ModelAndView mv = new ModelAndView();

	        String auname = request.getParameter("auname");
	        String apwd = request.getParameter("apwd");

	        // Check credentials using the adminService
	        Admin admin = adminService.checkadminlogin(auname, apwd);

	        if (admin != null) {
	            // Set session attributes for the logged-in admin
	            session.setAttribute("loggedInAdmin", admin); // Save admin object
	            session.setAttribute("adminUsername", auname); // Optionally save username
	            
	            mv.setViewName("redirect:/admindashboard"); // Redirect to admin home page
	        } else {
	            mv.setViewName("adminlogin");
	            mv.addObject("message", "Login Failed. Please try again.");
	        }

	        return mv;
	    }
	    
	    @GetMapping("viewallfarmers")
		public ModelAndView viewallfarmers() {
			ModelAndView mv = new ModelAndView("viewallfarmers");
			List<Farmer> farmerlist = adminService.ViewAllFarmers();
	        mv.addObject("farmerlist", farmerlist);
			
			return mv;
			
		}
	    @GetMapping("verifyfarmer")
		public ModelAndView verifyFarmer(@RequestParam("id") int id) {
			ModelAndView mv=new ModelAndView();
		    String msg=adminService.verifyFarmer(id);
		    
		    mv.addObject("msg",msg);
		    mv.setViewName("redirect:/viewallfarmers");
		    
		    
		    return mv;
		}
	    @GetMapping("viewallusers")
		public ModelAndView viewallusers() {
			ModelAndView mv = new ModelAndView("viewallusers");
			List<User> userlist = adminService.ViewAllUsers();
	        mv.addObject("userlist", userlist);
			
			return mv;
			
		}
	    @GetMapping("verifyuser")
		public ModelAndView verifyUser(@RequestParam("id") int id) {
			ModelAndView mv=new ModelAndView();
		    String msg=adminService.verifyUser(id);
		    
		    mv.addObject("msg",msg);
		    mv.setViewName("redirect:/viewallusers");
		    
		    
		    return mv;
		}
	    @GetMapping("viewallexperts")
		public ModelAndView viewallexpert() {
			ModelAndView mv = new ModelAndView("viewallexperts");
			List<Expert> expertlist = adminService.ViewAllExperts();
	        mv.addObject("expertlist", expertlist);
			
			return mv;
			
		}
	    @GetMapping("verifyexpert")
		public ModelAndView verifyExpert(@RequestParam("id") int id) {
			ModelAndView mv=new ModelAndView();
		    String msg=adminService.verifyExpert(id);
		    
		    mv.addObject("msg",msg);
		    mv.setViewName("redirect:/viewallexperts");
		    
		  return mv;
		}
	    @GetMapping("/deleteexpert")
		   public ModelAndView deleteExpert(@RequestParam("id") long id) 
		  {
		       ModelAndView mv = new ModelAndView();
		       String result = adminService.deleteexpertbyid(id);
		       mv.addObject("message", result);
		       mv.setViewName("redirect:/viewallexperts");  
		       return mv;
		   }
	    @GetMapping("/deleteuser")
		   public ModelAndView deleteUser(@RequestParam("id") long id) 
		  {
		       ModelAndView mv = new ModelAndView();
		       String result = adminService.deleteuserbyid(id);
		       mv.addObject("message", result);
		       mv.setViewName("redirect:/viewallusers");  // Redirect to the achievements page after deletion
		       return mv;
		   }
	    @GetMapping("/deletefarmer")
		   public ModelAndView deletefarmer(@RequestParam("id") long id) 
		  {
		       ModelAndView mv = new ModelAndView();
		       String result = adminService.deletefarmerbyid(id);

		      
		       mv.addObject("message", result);
		       mv.setViewName("redirect:/viewallfarmers");  
		       return mv;
		   }
}
