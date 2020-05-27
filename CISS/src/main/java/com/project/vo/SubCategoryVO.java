package com.project.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="subcategory_table")

public class SubCategoryVO{
	
	@Id
	@Column(name="subcategoryId")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int subcategoryId;
	
	@Column(name="subcategoryName")
	private String subcategoryName;
	
	@Column(name="subcategoryDescription")
	private String subcategoryDescription;
	
	@Column
	private boolean deleteStatus =  true;
	
	@ManyToOne
	private CategoryVO categoryVO;
	
	public boolean isDeleteStatus() {
		return deleteStatus;
	}

	public int getSubcategoryId() {
		return subcategoryId;
	}

	public void setSubcategoryId(int subcategoryId) {
		this.subcategoryId = subcategoryId;
	}

	public String getSubcategoryName() {
		return subcategoryName;
	}

	public void setSubcategoryName(String subcategoryName) {
		this.subcategoryName = subcategoryName;
	}

	public String getSubcategoryDescription() {
		return subcategoryDescription;
	}

	public void setSubcategoryDescription(String subcategoryDescription) {
		this.subcategoryDescription = subcategoryDescription;
	}

	public CategoryVO getCategoryVO() {
		return categoryVO;
	}

	public void setCategoryVO(CategoryVO categoryVO) {
		this.categoryVO = categoryVO;
	}
	
	public void setDeleteStatus(boolean deleteStatus) {
		this.deleteStatus = deleteStatus;
	}
	
}
