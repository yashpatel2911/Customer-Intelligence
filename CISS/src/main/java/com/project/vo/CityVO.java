package com.project.vo;
import javax.persistence.*;


@Entity
@Table(name="city_table")

public class CityVO {
	
	@Id
	@Column(name="cityId")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int cityId;
	
	@Column(name="cityName")
	private String cityName;
	
	@Column(name="cityDescription")
	private String cityDescription;
	
	@Column
	private boolean deleteStatus =  true;
	
	public boolean isDeleteStatus() {
		return deleteStatus;
	}

	public void setDeleteStatus(boolean deleteStatus) {
		this.deleteStatus = deleteStatus;
	}

	public int getCityId() {
		return cityId;
	}

	public void setCityId(int cityId) {
		this.cityId = cityId;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public String getCityDescription() {
		return cityDescription;
	}

	public void setCityDescription(String cityDescription) {
		this.cityDescription = cityDescription;
	}

}
