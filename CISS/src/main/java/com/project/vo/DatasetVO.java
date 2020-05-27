package com.project.vo;
import javax.persistence.*;


@Entity
@Table(name="dataset_table")

public class DatasetVO {
	
	@Id
	
	@Column(name="datasetId")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int datasetId;
	
	@Column(name="datasetName")
	private String datasetName;
	
	@Column(name="datasetPath")
	private String datasetPath;
	
	public String getDatasetPath() {
		return datasetPath;
	}

	public void setDatasetPath(String datasetPath) {
		this.datasetPath = datasetPath;
	}

	@Column(name="datasetDescription")
	private String datasetDescription;
	
	@Column
	private boolean deleteStatus =  true;
	
	public boolean isDeleteStatus() {
		return deleteStatus;
	}

	public int getDatasetId() {
		return datasetId;
	}

	public void setDatasetId(int datasetId) {
		this.datasetId = datasetId;
	}

	public String getDatasetName() {
		return datasetName;
	}

	public void setDatasetName(String datasetName) {
		this.datasetName = datasetName;
	}

	public String getDatasetDescription() {
		return datasetDescription;
	}

	public void setDatasetDescription(String datasetDescription) {
		this.datasetDescription = datasetDescription;
	}

	public void setDeleteStatus(boolean deleteStatus) {
		this.deleteStatus = deleteStatus;
	}
	
	
	

}
