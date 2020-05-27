package com.project.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="feedback")
public class FeedbackVO {

	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="feedbackId")
	private int feedbackId;
	
	@Column(name="feedBack")
	private String feedBack;
	
	
	
	@Column(name="rating")
	private String rating;
	
	@ManyToOne
	LoginVO loginVO;

	public int getFeedbackId() {
		return feedbackId;
	}

	public void setFeedbackId(int feedbackId) {
		this.feedbackId = feedbackId;
	}

	public String getFeedBack() {
		return feedBack;
	}

	public void setFeedBack(String feedBack) {
		this.feedBack = feedBack;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public LoginVO getLoginVO() {
		return loginVO;
	}

	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}

	
}
