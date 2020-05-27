package com.project.dao;

import java.util.List;

import com.project.vo.FeedbackVO;

public interface FeedbackDAO {
	
	public void insertFeedback(FeedbackVO feedbackVO);
	
	public List viewFeedback(FeedbackVO feedbackVO);

	public List viewuserFeedback(FeedbackVO feedbackVO);

}