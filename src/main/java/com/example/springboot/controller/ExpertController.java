package com.example.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.example.springboot.models.AddCrop;
import com.example.springboot.models.Expert;
import com.example.springboot.models.UploadVideo;
import com.example.springboot.service.ExpertService;
import com.example.springboot.service.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ExpertController {
	
	@Autowired
	public ExpertService expertService;
	
	@Autowired 
	public UserService userService;
	
	 @GetMapping("/ExpertRegistration")
	    public ModelAndView ExpertRegistration() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("ExpertRegistration");
	        return mv;
	    }
	 @GetMapping("expertprofile")
		public ModelAndView expertprofile()
		{
			ModelAndView mv = new ModelAndView();
			mv.setViewName("expertprofile");
			return mv;
		}
	 @GetMapping("expertlogout")
		public ModelAndView  expertlogout()
		{
			ModelAndView mv = new ModelAndView();
			mv.setViewName("redirect:/");
			return mv;
		}
	 
	 @GetMapping("/expertdashboard")
	    public ModelAndView expertdashboard() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("expertdashboard");
	        return mv;
	    }
	    @GetMapping("/expertlogin")
	    public ModelAndView expertlogin() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("expertlogin");
	        return mv;
	    }
	
	
	 @PostMapping("/insertexpert")
	    public ModelAndView insertExpert(HttpServletRequest request) {
	        
	        String name = request.getParameter("name");
	        String email = request.getParameter("email");
	        String phoneNumber = request.getParameter("phoneNumber");
	        String expertise = request.getParameter("expertise");
	        String qualifications = request.getParameter("qualifications");
	        String yearsOfExperience = request.getParameter("yearsOfExperience");
	        String location = request.getParameter("location");
	        String availability = request.getParameter("availability");
	        String password = request.getParameter("password");

	        
	        Expert  expert = new Expert();
	        expert.setName(name);
	        expert.setEmail(email);
	        expert.setPhoneNumber(phoneNumber);
	        expert.setExpertise(expertise);
	        expert.setQualifications(qualifications);
	        expert.setYearsOfExperience(yearsOfExperience);
	        expert.setLocation(location);
	        expert.setAvailability(availability);
	        expert.setPassword(password);

	        
	        expertService.ExpertRegister(expert);

	        // Create and return a ModelAndView object
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("ExpertRegistration"); 
	        mv.addObject("message", "Farmer registered successfully!");

	        return mv;
	    }
	 
	  @PostMapping("/checkexpertlogin")
			public ModelAndView checkExpertLogin(HttpServletRequest request) {
			    String email = request.getParameter("email");
			    String password = request.getParameter("password");
			    ModelAndView mv = new ModelAndView();

			    System.out.println(email + " " + password);

			    Expert expert = expertService.checkLogin(email, password);

			    if (expert == null) {
			        HttpSession session = request.getSession();
			        session.setAttribute("error", "Check your credentials");
			        mv.setViewName("redirect:/expertlogin"); 
			    } else if (!expert.isVerified()) {
			        mv.addObject("msg", "Your account is not verified. Kindly contact Admin (in Contact page)");
			        mv.setViewName("ErrorPage");
			        System.out.println(expert.toString()+"");
			    } else {
			        HttpSession session = request.getSession();
			        session.setAttribute("expert", expert);
			        mv.setViewName("redirect:/expertdashboard");
			        System.out.println(expert.toString());
			    }
			    return mv;
			}
			
	  @GetMapping("/uploadvideo")
	    public ModelAndView uploadvideo() {
	        ModelAndView mv = new ModelAndView();
	        mv.setViewName("uploadvideo");
	        return mv;
	    }
	  
	  

	  
	  @PostMapping("/upload")
	  public ResponseEntity<String> uploadVideo(
	          @RequestParam("title") String title,
	          @RequestParam("description") String description,
	          @RequestParam("tags") String tags,
	          @RequestParam("category") String category,
	          @RequestParam("duration") int duration,
	          @RequestParam("uploadedByExpertId") Long uploadedByExpertId,
	          @RequestParam("rating") double rating,
	             @RequestParam("videoFile") MultipartFile videoFile) {
		  ModelAndView mv = new ModelAndView();
	      try {
	          // Validate video file size (example: max 100 MB)
	          if (videoFile.getSize() > 100 * 1024 * 1024) { // 100 MB limit
	              return ResponseEntity.badRequest().body("Video file size exceeds the maximum limit of 100MB.");
	          }

	          // Convert MultipartFile to byte[]
	          byte[] videoData = videoFile.getBytes();

	          // Create and populate the Video object
	          UploadVideo video = new UploadVideo();
	          video.setTitle(title);
	          video.setDescription(description);
	          video.setTags(tags);
	          video.setCategory(category);
	          video.setDuration(duration);
	          video.setUploadedByExpertId(uploadedByExpertId);
	          video.setRating(rating);
	          video.setVideoData(videoData);

	          // Save the Video object to the database using the service
	          expertService.addvideo(video);
	          mv.setViewName("redirect:/uploadvideo");
	          return ResponseEntity.ok("Video uploaded successfully!");
	      } catch (Exception e) {
	          return ResponseEntity.status(500).body("Failed to upload video: " + e.getMessage());
	      }
	  }
	  @GetMapping("/ExpertVideos")
	  public ModelAndView achivementByUserId(HttpServletRequest request) {
	      ModelAndView mv = new ModelAndView("ExpertVideos");
	      
	      
	      HttpSession httpSession = request.getSession();
	       Expert expert = (Expert) httpSession.getAttribute("expert");
	      
              long uploadedByExpertId = expert.getId();
	         
	          List<UploadVideo> videos = expertService.findByExpertId(uploadedByExpertId);

	          if (!videos.isEmpty()) {
	              mv.addObject("videos", videos);
	          } else {
	              mv.addObject("message", "No video found for the user.");
	          }
	             return mv;
	  }
	  
	 
	  @GetMapping("/displayVideos")
	  public ResponseEntity<byte[]> displayVideos(@RequestParam long uploadedByExpertId) {
	      // Retrieve videos for the given expert
	      List<UploadVideo> videos = expertService.findByExpertId(uploadedByExpertId);

	      if (videos != null && !videos.isEmpty()) {
	          // Get the first video from the list (if available)
	          UploadVideo video = videos.get(0);

	          if (video.getVideoData() != null) {
	              // Return the video content as a response with appropriate content type
	              return ResponseEntity.ok()
	                                   .contentType(MediaType.valueOf("video/mp4"))
	                                   .body(video.getVideoData());
	          } else {
	              // If video data is null, return 404 not found
	              return ResponseEntity.notFound().build();
	          }
	      } else {
	          // If no videos are found, return 404 not found
	          return ResponseEntity.notFound().build();
	      }
	  }
	  
	  @GetMapping("expertviewallcrops")
		public ModelAndView viewallcropes() {
			ModelAndView mv = new ModelAndView("expertviewallcrops");
			List<AddCrop> crop = userService.ViewAllCrops();
	        mv.addObject("crop", crop);
			
			return mv;
 }

	  

	  
}


