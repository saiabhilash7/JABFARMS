package com.example.springboot.controller;

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
import com.example.springboot.models.UploadVideo;
import com.example.springboot.models.User;
import com.example.springboot.service.FarmerService;
import com.example.springboot.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;



@Controller
public class UserController {
	
	

	@Autowired
	private UserService userService;
	
	@Autowired
	private FarmerService farmerService;
	
	
	    // Home Page
	    @GetMapping("/UserRegister")
	    public ModelAndView Register() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("UserRegister");
	        return mv;
	    }
	    @GetMapping("/UserLogin")
	    public ModelAndView Login() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("UserLogin");
	        return mv;
	    }
	    
	    @GetMapping("userprofile")
		public ModelAndView empprofile()
		{
			ModelAndView mv = new ModelAndView();
			mv.setViewName("userprofile");
			return mv;
		}
	    @GetMapping("/UserDashboard")
	    public ModelAndView userdashboard() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("UserDashboard");
	        return mv;
	    }
	    @GetMapping("userlogout")
		public ModelAndView  userlogout()
		{
			ModelAndView mv = new ModelAndView();
			mv.setViewName("redirect:/");
			return mv;
		}
	   
	    
	    @PostMapping("/insertuser")
	    public ModelAndView insertUser(HttpServletRequest request) {
	        // Retrieve form data from the request
	        String firstName = request.getParameter("firstName");
	        String lastName = request.getParameter("lastName");
	        String email = request.getParameter("email");
	        String phone = request.getParameter("phone");
	        String country = request.getParameter("country");
	        String state = request.getParameter("state");
	        String address = request.getParameter("address");
	        String password = request.getParameter("password");

	        // Create a new User object and set its properties
	        User user = new User();
	        user.setFirstName(firstName);
	        user.setLastName(lastName);
	        user.setEmail(email);
	        user.setPhone(phone);
	        user.setCountry(country);
	        user.setState(state);
	        user.setAddress(address);
	        user.setPassword(password);

	        // Call the service layer to save the user object
	        userService.UserRegister(user);

	        // Create and return a ModelAndView object
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("UserRegister"); // Replace with the appropriate view name for the user registration page
	        mv.addObject("message", "User registered successfully!");

	        return mv;
	    }
	    
	    @PostMapping("/checkuserlogin")
		public ModelAndView checkUserLogin(HttpServletRequest request) {
		    String email = request.getParameter("email");
		    String password = request.getParameter("password");
		    ModelAndView mv = new ModelAndView();

		    System.out.println(email + " " + password);

		    User user = userService.checkLogin(email, password);

		    if (user == null) {
		        HttpSession session = request.getSession();
		        session.setAttribute("error", "Check your credentials");
		        mv.setViewName("redirect:/UserLogin"); 
		    } else if (!user.isVerified()) {
		        mv.addObject("msg", "Your account is not verified. Kindly contact Admin (in Contact page)");
		        mv.setViewName("ErrorPage");
		        System.out.println(user.toString()+"");
		    } else {
		        HttpSession session = request.getSession();
		        session.setAttribute("user", user);
		        mv.setViewName("redirect:/UserDashboard");
		        System.out.println(user.toString());
		    }
		    return mv;
		}
	    @GetMapping("viewallcrops")
  		public ModelAndView viewallcrops() {
  			ModelAndView mv = new ModelAndView("viewallcrops");
  			List<AddCrop> crop = userService.ViewAllCrops();
  	        mv.addObject("crop", crop);
  			
  			return mv;
   }
	    @GetMapping("ViewAllvideosUsers")
		 public ModelAndView viewAllVideos() {
		     // Get the list of all achievements
		     List<UploadVideo> videos = farmerService.ViewAllVideos();
		     
		     // Create a ModelAndView object and add the achievements list as an attribute
		     ModelAndView mv = new ModelAndView("ViewAllvideosUsers");
		     mv.addObject("videos", videos); 
		    

		     return mv;
		 }
	    @GetMapping("/displayVideoUser")
	    public ResponseEntity<byte[]> displayVideoUser(@RequestParam long id) throws Exception {
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
	    
	    @PostMapping("/buyCrop")
	    public ModelAndView buyCrop(HttpServletRequest request) {
	        try {
	            // Parse required parameters
	            Long cropId = parseLongParameter(request, "cropId", "Crop ID");
	            Long userId = parseLongParameter(request, "userId", "User ID");
	            Long farmerId = parseLongParameter(request, "farmerId", "Farmer ID");
	            String cropName = request.getParameter("cropName");
	            if (cropName == null || cropName.isEmpty()) {
	                throw new IllegalArgumentException("Crop Name is required");
	            }
	            Long presentPrice = parseLongParameter(request, "presentPrice", "Present Price");
	            Double quantity = parseDoubleParameter(request, "quantity", "Quantity");
	            Double totalPrice = parseDoubleParameter(request, "totalPrice", "Total Price");

	            // Create and populate BuyCrop object
	            BuyCrop crop = new BuyCrop();
	            crop.setCropId(cropId);
	            crop.setUserId(userId);
	            crop.setFarmerId(farmerId);
	            crop.setCropName(cropName);
	            crop.setPresentPrice(presentPrice);
	            crop.setQuantity(quantity);
	            crop.setTotalPrice(totalPrice);

	            // Save crop purchase using service
	            userService.savePurchase(crop);

	            // Return success message
	            ModelAndView mv = new ModelAndView("BuyCrop");
	            mv.addObject("message", "Crop purchased successfully!");
	            return mv;
	        } catch (Exception e) {
	            // Handle errors
	            ModelAndView mv = new ModelAndView("error");
	            mv.addObject("error", "Failed to complete purchase: " + e.getMessage());
	            return mv;
	        }
	    }

	    @GetMapping("/BuyCrop")
	    public ModelAndView getBuyCropPage(HttpServletRequest request, HttpSession session) {
	        try {
	            Long cropId = parseLongParameter(request, "id", "Crop ID");

	            // Fetch crop details from the service
	            AddCrop cropDetails = userService.getCropById(cropId);
	            if (cropDetails == null) {
	                throw new RuntimeException("Crop not found with ID: " + cropId);
	            }

	            // Save crop details and farmer ID in session
	            session.setAttribute("crop", cropDetails);
	            session.setAttribute("farmerId", cropDetails.getFarmerId());

	            ModelAndView mv = new ModelAndView("BuyCrop");
	            mv.addObject("cropDetails", cropDetails);
	            return mv;
	        } catch (Exception e) {
	            ModelAndView mv = new ModelAndView("error");
	            mv.addObject("error", "Error retrieving crop details: " + e.getMessage());
	            return mv;
	        }
	    }

	   
	    private Long parseLongParameter(HttpServletRequest request, String paramName, String paramDisplayName) {
	        String value = request.getParameter(paramName);
	        if (value == null || value.isEmpty()) {
	            throw new IllegalArgumentException(paramDisplayName + " is required and cannot be empty");
	        }
	        try {
	            return Long.parseLong(value);
	        } catch (NumberFormatException e) {
	            throw new IllegalArgumentException(paramDisplayName + " must be a valid number");
	        }
	    }

	    private Double parseDoubleParameter(HttpServletRequest request, String paramName, String paramDisplayName) {
	        String value = request.getParameter(paramName);
	        if (value == null || value.isEmpty()) {
	            throw new IllegalArgumentException(paramDisplayName + " is required and cannot be empty");
	        }
	        try {
	            return Double.parseDouble(value);
	        } catch (NumberFormatException e) {
	            throw new IllegalArgumentException(paramDisplayName + " must be a valid number");
	        }
	    }
	    
	    @GetMapping("/UserPurchaseCrops")
	    public ModelAndView viewUserPurchases(HttpSession session) {
	        User user = (User) session.getAttribute("user");

	        if (user == null) {
	            ModelAndView mv = new ModelAndView("redirect:/UserLogin");
	            mv.addObject("error", "Please log in to view your purchases.");
	            return mv;
	        }

	        // Fetch purchases for the logged-in user
	        List<BuyCrop> purchases = userService.getUserPurchases(user.getId());

	        // Create ModelAndView and pass the purchases list
	        ModelAndView mv = new ModelAndView("UserPurchaseCrops");
	        mv.addObject("purchases", purchases);
	        return mv;
	    }
	    

}
	
	    
	


