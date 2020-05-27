package com.project.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="package_table")
public class PackageVO {
	
	@Id
	@Column(name="packageId")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int packageId;
	
	@Column(name="packageName")
	private String packageName;
	
	@Column(name="packageDuration")
	private String packageDuration;
	
	@Column(name="packagePrice")
	private int packagePrice;
	
	@Column(name="packageCampaign")
	private int packageCampaign;
	
	@Column(name="packageDescription")
	private String packageDescription;
	
	@Column
	private boolean deleteStatus =  true;
	
	public boolean isDeleteStatus() {
		return deleteStatus;
	}

	public void setDeleteStatus(boolean deleteStatus) {
		this.deleteStatus = deleteStatus;
	}

	public int getPackageId() {
		return packageId;
	}

	public void setPackageId(int packageId) {
		this.packageId = packageId;
	}

	public String getPackageName() {
		return packageName;
	}

	public void setPackageName(String packageName) {
		this.packageName = packageName;
	}

	

	
	public String getPackageDuration() {
		return packageDuration;
	}

	public void setPackageDuration(String packageDuration) {
		this.packageDuration = packageDuration;
	}

	public int getPackagePrice() {
		return packagePrice;
	}

	public void setPackagePrice(int packagePrice) {
		this.packagePrice = packagePrice;
	}

	public int getPackageCampaign() {
		return packageCampaign;
	}

	public void setPackageCampaign(int packageCampaign) {
		this.packageCampaign = packageCampaign;
	}

	public String getPackageDescription() {
		return packageDescription;
	}

	public void setPackageDescription(String packageDescription) {
		this.packageDescription = packageDescription;
	}
	
	

}
