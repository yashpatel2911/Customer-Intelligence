package com.project.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.project.dao.GraphDAO;

@Service
public class GraphServices {
	
	@Autowired
	GraphDAO graphDAO;
	
	@Transactional
	public List generateGraph(){
		return this.graphDAO.generateGraph();
	}
	

}
