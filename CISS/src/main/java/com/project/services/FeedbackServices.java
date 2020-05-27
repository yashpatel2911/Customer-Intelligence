package com.project.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.FeedbackDAO;
import com.project.vo.FeedbackVO;

@Service
public class FeedbackServices {

	@Autowired
	FeedbackDAO feedbackDAO;

	@Transactional
	public void insertFeedback(FeedbackVO feedbackVO) {
		
		this.feedbackDAO.insertFeedback(feedbackVO);
	}
	
	@Transactional
	public List viewFeedback(FeedbackVO feedbackVO) {
		
		List feedbackList = this.feedbackDAO.viewFeedback(feedbackVO);
		return feedbackList;
	}
	
	@Transactional
    public List viewuserFeedback(FeedbackVO feedbackVO) {
    	
        List feedbackList1 =	this.feedbackDAO.viewuserFeedback(feedbackVO);
        return feedbackList1;
    
    }

}
