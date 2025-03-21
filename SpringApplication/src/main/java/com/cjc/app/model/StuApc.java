package com.cjc.app.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity //this is the entity class
	//changes from of the Git
public class StuApc {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
private int studentId;
private String studentFullName;
private String StudentEmail;
private int StudentAge;
private String studentCollegeName;
private String studentCourse;
private String batchNumber;
public int getStudentId() {
	return studentId;
}
public void setStudentId(int studentId) {
	this.studentId = studentId;
}
private String batchMode;
private String feesPaid;
 
public String getStudentFullName() {
	return studentFullName;
}
public void setStudentFullName(String studentFullName) {
	this.studentFullName = studentFullName;
}
public String getStudentEmail() {
	return StudentEmail;
}
public void setStudentEmail(String studentEmail) {
	StudentEmail = studentEmail;
}
public int getStudentAge() {
	return StudentAge;
}
public void setStudentAge(int studentAge) {
	StudentAge = studentAge;
}
public String getStudentCollegeName() {
	return studentCollegeName;
}
public void setStudentCollegeName(String studentCollegeName) {
	this.studentCollegeName = studentCollegeName;
}
public String getStudentCourse() {
	return studentCourse;
}
public void setStudentCourse(String studentCourse) {
	this.studentCourse = studentCourse;
}
public String getBatchNumber() {
	return batchNumber;
}
public void setBatchNumber(String batchNumber) {
	this.batchNumber = batchNumber;
}
public String getBatchMode() {
	return batchMode;
}
public void setBatchMode(String batchMode) {
	this.batchMode = batchMode;
}
public String getFeesPaid() {
	return feesPaid;
}
public void setFeesPaid(String feesPaid) {
	this.feesPaid = feesPaid;
}

}

