package com.ml.entity;

import java.io.File;
import java.sql.Date;

public class Appointment {

	private long id;
	private int userId;
	private String age;
	private Gender gender;
	private Disease disease;
	private Date doreg;
	private Date doapp;
	private int doctorId;
	private int patientNumber;
	private String status;
	private Address address;
	private File healthCard;

	public Appointment() {

	}

	public Appointment(int userId, Gender gender, Disease disease, Date doreg, Date doapp, int doctorId,
			int patientNumber, String status, Address address) {
		super();
		this.userId = userId;
		this.gender = gender;
		this.disease = disease;
		this.doreg = doreg;
		this.doapp = doapp;
		this.doctorId = doctorId;
		this.patientNumber = patientNumber;
		this.status = status;
		this.address = address;
	}

	public Appointment(long id, int userId, String age, Gender gender, Disease disease, Date doreg, Date doapp,
			int doctorId, int patientNumber, String status, Address address, File healthCard) {
		super();
		this.id = id;
		this.userId = userId;
		this.age = age;
		this.gender = gender;
		this.disease = disease;
		this.doreg = doreg;
		this.doapp = doapp;
		this.doctorId = doctorId;
		this.patientNumber = patientNumber;
		this.status = status;
		this.address = address;
		this.healthCard = healthCard;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public Gender getGender() {
		return gender;
	}

	public void setGender(Gender gender) {
		this.gender = gender;
	}

	public Disease getDisease() {
		return disease;
	}

	public void setDisease(Disease disease) {
		this.disease = disease;
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

	public int getDoctorId() {
		return doctorId;
	}

	public void setDoctorId(int doctorId) {
		this.doctorId = doctorId;
	}

	public int getPatientNumber() {
		return patientNumber;
	}

	public void setPatientNumber(int patientNumber) {
		this.patientNumber = patientNumber;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public File getHealthCard() {
		return healthCard;
	}

	public void setHealthCard(File healthCard) {
		this.healthCard = healthCard;
	}

	@Override
	public String toString() {
		return "Appointment [id=" + id + ", userId=" + userId + ", age=" + age + ", gender=" + gender + ", disease="
				+ disease + ", doreg=" + doreg + ", doapp=" + doapp + ", doctorId=" + doctorId + ", patientNumber="
				+ patientNumber + ", status=" + status + ", address=" + address + ", healthCard=" + healthCard + "]";
	}

}
