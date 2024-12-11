package com.example.springboot.controller;


import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.example.springboot.models.AddCrop;
import com.example.springboot.models.BuyCrop;
import com.example.springboot.models.Farmer;
import com.example.springboot.models.UploadVideo;
import com.example.springboot.models.User;
import com.example.springboot.repository.AddCropRepository;
import com.example.springboot.repository.BuyCropRepository;
import com.example.springboot.service.FarmerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class FarmerController {
	
	@Autowired
	private FarmerService farmerService;
	
	@Autowired
	private BuyCropRepository buycropRepository;
	
	@Autowired
	private AddCropRepository addcropRepository;
	
	    // Home Page
	    @GetMapping("/FarmerRegister")
	    public ModelAndView home() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("FarmerRegister");
	        return mv;
	    }
	    @GetMapping("/farmerdashboard")
	    public ModelAndView farmerdashboard() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("farmerdashboard");
	        return mv;
	    }
	    @GetMapping("/farmerlogin")
	    public ModelAndView farmerlogin() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("farmerlogin");
	        return mv;
	    }
	    @GetMapping("farmerlogout")
		public ModelAndView  userlogout()
		{
			ModelAndView mv = new ModelAndView();
			mv.setViewName("redirect:/");
			return mv;
		}
	    @GetMapping("farmerprofile")
		public ModelAndView farmerrofile()
		{
			ModelAndView mv = new ModelAndView();
			mv.setViewName("farmerprofile");
			return mv;
		}
	   
	    @PostMapping("/insertfarmer")
	    public ModelAndView insertFarmer(HttpServletRequest request) {
	        // Retrieve form data from the request
	        String firstName = request.getParameter("firstName");
	        String lastName = request.getParameter("lastName");
	        String email = request.getParameter("email");
	        String phone = request.getParameter("phone");
	        String country = request.getParameter("country");
	        String state = request.getParameter("state");
	        String address = request.getParameter("address");
	        String password = request.getParameter("password");

	        // Create a new Farmer object and set its properties
	        Farmer farmer = new Farmer();
	        farmer.setFirstName(firstName);
	        farmer.setLastName(lastName);
	        farmer.setEmail(email);
	        farmer.setPhone(phone);
	        farmer.setCountry(country);
	        farmer.setState(state);
	        farmer.setAddress(address);
	        farmer.setPassword(password);

	        // Call the service layer to save the farmer object
	        farmerService.FarmerRegister(farmer);

	        // Create and return a ModelAndView object
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("FarmerRegister"); // Replace with the view name for the registration page or success page
	        mv.addObject("message", "Farmer registered successfully!");

	        return mv;
	    }
	    @PostMapping("/checkfarmerlogin")
		public ModelAndView checkFarmerLogin(HttpServletRequest request) {
		    String email = request.getParameter("email");
		    String password = request.getParameter("password");
		    ModelAndView mv = new ModelAndView();

		    System.out.println(email + " " + password);

		    Farmer farmer = farmerService.checkLogin(email, password);

		    if (farmer == null) {
		        HttpSession session = request.getSession();
		        session.setAttribute("error", "Check your credentials");
		        mv.setViewName("redirect:/farmerlogin"); 
		    } else if (!farmer.isVerified()) {
		        mv.addObject("msg", "Your account is not verified. Kindly contact Admin (in Contact page)");
		        mv.setViewName("ErrorPage");
		        System.out.println(farmer.toString()+"");
		    } else {
		        HttpSession session = request.getSession();
		        session.setAttribute("farmer", farmer);
		        mv.setViewName("farmerdashboard");
		        System.out.println(farmer.toString());
		    }
		    return mv;
		}
	     
	    @GetMapping("viewAllvideos")
		 public ModelAndView viewAllVideos() {
		     // Get the list of all achievements
		     List<UploadVideo> videos = farmerService.ViewAllVideos();
		     
		     // Create a ModelAndView object and add the achievements list as an attribute
		     ModelAndView mv = new ModelAndView("viewAllvideos");
		     mv.addObject("videos", videos); 
		    

		     return mv;
		 }
	    @GetMapping("/displayVideo")
	    public ResponseEntity<byte[]> displayVideo(@RequestParam long id) throws Exception {
	        // Retrieve video by ID
	        UploadVideo video = farmerService.ViewVideoById(id);

	        if (video != null && video.getVideoData() != null) {
	            // Set response headers and return video content
	            return ResponseEntity.ok()
	                                 .contentType(MediaType.valueOf("video/mp4"))
	                                 .body(video.getVideoData());
	        } else {
	            // Return 404 status if video not found
	            return ResponseEntity.notFound().build();
	        }
	    }
	    
	    @GetMapping("/AddCrop")
	    public ModelAndView AddCrop() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("AddCrop");
	        return mv;
	    }
	    @PostMapping("/insertcrop")
	    public ModelAndView insertCrop(HttpServletRequest request) {
	        
	        String name = request.getParameter("name");
	        String farmerId = request.getParameter("farmerId");
	        String cropType = request.getParameter("cropType");
	        String cultivatedLand = request.getParameter("cultivatedLand");
	        String soilType = request.getParameter("soilType");
	        String seasionType = request.getParameter("seasionType");
	        String expectedHarvest = request.getParameter("expectedHarvest");
	        String previousPrice = request.getParameter("previousPrice");
	        String presentPrice = request.getParameter("presentPrice");
	        String fertilizerUsed = request.getParameter("fertilizerUsed");
	        String irrigationMethod = request.getParameter("irrigationMethod");


	        
	        AddCrop  crop  = new AddCrop();
	        crop.setName(name);
	        crop.setFarmerId(farmerId);
	        crop.setCropType(cropType);
	        crop.setCultivatedLand(cultivatedLand);
	        crop.setSoilType(soilType);
	        crop.setSeasionType(seasionType); 
	        crop.setExpectedHarvest(expectedHarvest);
	        crop.setPreviousPrice(previousPrice);
	        crop.setPresentPrice(presentPrice);
	        crop.setFertilizerUsed(fertilizerUsed);
	        crop.setIrrigationMethod(irrigationMethod);
	      
	        
	        farmerService.addCrop(crop);

	       
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("AddCrop"); 
	        mv.addObject("message", "Crop Added  successfully!");

	        return mv;
	    }
	    
	    @GetMapping("/ViewFarmerCrops")
	    public ModelAndView loanRequestByUserId(HttpServletRequest request) {
	        ModelAndView mv = new ModelAndView("ViewFarmerCrops");

	        HttpSession httpSession = request.getSession();
	        Farmer farmer = (Farmer) httpSession.getAttribute("farmer");
	        String farmerId = Long.toString(farmer.getId()); // Ensure the correct field or method is used

	        // Fetch the list of crops based on the farmer's ID
	        List<AddCrop> cropList = farmerService.findByfarmerId(farmerId);
	        
	        for(AddCrop crop: cropList) {
	            System.out.println(crop.getId()); // Debugging statement to check the crop IDs
	        }

	        // Add cropList to the model with the name "cropList"
	        mv.addObject("cropList", cropList);
	        
	        return mv;
	    }

	    
	    @GetMapping("/updateCrop")
	    public ModelAndView getUpdateCrop(@RequestParam("id") long id, HttpServletRequest request) {
	        ModelAndView mv = new ModelAndView();
	        Optional<AddCrop> cropOpt = farmerService.findbyId(id);

	        if (cropOpt.isPresent()) {
	            HttpSession session = request.getSession();
	            session.setAttribute("crop", cropOpt.get()); // Set crop for JSP
	            mv.setViewName("updateCrop"); // Return JSP view
	        } else {
	            mv.setViewName("error");
	            mv.addObject("message", "Crop data not found for the given ID.");
	        }
	        return mv;
	    }

	    @PostMapping("/updatecropdata")
	    public ModelAndView updateCropData(HttpServletRequest request) {
	        ModelAndView mv = new ModelAndView();
	       
	            long id = Long.parseLong(request.getParameter("id"));
	            AddCrop crop = new AddCrop();
	            crop.setId(id);
	            crop.setName(request.getParameter("name"));
	            crop.setCropType(request.getParameter("cropType"));
	            crop.setCultivatedLand(request.getParameter("cultivatedLand"));
	            crop.setSoilType(request.getParameter("soilType"));
	            crop.setSeasionType(request.getParameter("seasionType"));
	            crop.setExpectedHarvest(request.getParameter("expectedHarvest"));
	            crop.setPreviousPrice(request.getParameter("previousPrice"));
	            crop.setPresentPrice(request.getParameter("presentPrice"));
	            crop.setFertilizerUsed(request.getParameter("fertilizerUsed"));
	            crop.setIrrigationMethod(request.getParameter("irrigationMethod"));

	            // Update crop data
	            String message = farmerService.updateCropData(crop);
	            mv.setViewName("redirect:/ViewFarmerCrops");
	            mv.addObject("message", message);
	       
	        return mv;
	    }
	    @GetMapping("/deleteCrop")
		   public ModelAndView deleteAchievement(@RequestParam("id") long id) 
		  {
		       ModelAndView mv = new ModelAndView();

		       // Call the service method to delete the achievement
		       String result = farmerService.deleteCropbyid(id);

		       // Add the result message to the model
		       mv.addObject("message", result);
		       mv.setViewName("redirect:/ViewFarmerCrops");  // Redirect to the achievements page after deletion
		       return mv;
		   }
	   
	    @GetMapping("/FarmersPurchasedCrops")
	    public ModelAndView viewUserPurchases(HttpSession session) {
	        Farmer farmer = (Farmer) session.getAttribute("farmer");

	        if (farmer == null) {
	            ModelAndView mv = new ModelAndView("redirect:/farmerlogin");
	            mv.addObject("error", "Please log in to view your purchases.");
	            return mv;
	        }

	        // Fetch purchases for the logged-in user
	        List<BuyCrop> purchases = farmerService.getPurchasesById(farmer.getId());

	        
	        ModelAndView mv = new ModelAndView("FarmersPurchasedCrops");
	        mv.addObject("purchases", purchases);
	        return mv;
	    }



}
