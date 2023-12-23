package com.ml.entity;

import java.io.File;
import java.sql.Date;

public class Appointment {

	private long id;
	private Date doreg;
	private Date doapp;
	private String doctorName;
	private int patientNumber;
	private File healthCard;

	public Appointment() {

	}

	public Appointment(Date doreg, Date doapp, String doctorName, int patientNumber, File healthCard) {
		super();
		this.doreg = doreg;
		this.doapp = doapp;
		this.doctorName = doctorName;
		this.patientNumber = patientNumber;
		this.healthCard = healthCard;
	}

	public Date getDoreg() {
		return doreg;
	}

	public void setDoreg(Date doreg) {
		this.doreg = doreg;
	}

	public Date getDoapp() {
		return doapp;
	}

	public void setDoapp(Date doapp) {
		this.doapp = doapp;
	}

	public String getDoctorName() {
		return doctorName;
	}

	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}

	public int getPatientNumber() {
		return patientNumber;
	}

	public void setPatientNumber(int patientNumber) {
		this.patientNumber = patientNumber;
	}

	public File getHealthCard() {
		return healthCard;
	}

	public void setHealthCard(File healthCard) {
		this.healthCard = healthCard;
	}

	@Override
	public String toString() {
		return "Appointment [id=" + id + ", doreg=" + doreg + ", doapp=" + doapp + ", doctorName=" + doctorName
				+ ", patientNumber=" + patientNumber + ", healthCard=" + healthCard + "]";
	}

}
