package com.example.springboot.models;



import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="video_detail")
public class UploadVideo {

     @Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
    @Column(name="title",nullable=false)
    private String title;
    @Column(name="description",nullable=false)
    private String description;
    @Column(name="tags",nullable=false)
    private String tags;
    @Column(name="category",nullable=false)
    private String category;
    @Column(name= "duration")
    private int duration;
    @Column(name="expertId",nullable=false)
    private Long uploadedByExpertId;
    @Column(name="rating")
    private double rating;
    @Column(name="videodata",columnDefinition = "LONGBLOB")
    private byte[] videoData;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getTags() {
		return tags;
	}
	public void setTags(String tags) {
		this.tags = tags;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	public Long getUploadedByExpertId() {
		return uploadedByExpertId;
	}
	public void setUploadedByExpertId(Long uploadedByExpertId) {
		this.uploadedByExpertId = uploadedByExpertId;
	}
	public double getRating() {
		return rating;
	}
	public void setRating(double rating) {
		this.rating = rating;
	}
	public byte[] getVideoData() {
		return videoData;
	}
	public void setVideoData(byte[] videoData) {
		this.videoData = videoData;
	}
	

}
