package com.comviva.entity;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.springframework.format.annotation.DateTimeFormat;
@Entity(name = "Emp")
@DynamicInsert
@DynamicUpdate
public class Emp {

	@Id
	@Column(name="emp_id")
	private int empId;
	@Column(name="emp_name", length=25)
	private String empName;
	@Column(name="emp_sal")
	private double empSal;
	@Column(name="emp_dept", length=20)
	private String dept;
	
	@DateTimeFormat(pattern="yyyy-M-d")//convert String into LocalDate
	@Column(name="emp_doj")
	private LocalDate doj;
	
	public Emp() {
		
	}
	
	public Emp(int empId, String empName, double empSal, String dept, LocalDate doj) {
		super();
		this.empId = empId;
		this.empName = empName;
		this.empSal = empSal;
		this.dept = dept;
		this.doj = doj;
	}

	public int getEmpId() {
		return empId;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public double getEmpSal() {
		return empSal;
	}
	public void setEmpSal(double empSal) {
		this.empSal = empSal;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public LocalDate getDoj() {
		return doj;
	}
	public void setDoj(LocalDate doj) {
		this.doj = doj;
	}
	@Override
	public String toString() {
		
		return empId + " " + empName + " " + empSal + " " + dept + " " + doj;
	}
	
	
	
}
