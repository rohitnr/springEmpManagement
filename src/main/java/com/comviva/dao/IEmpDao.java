package com.comviva.dao;

import java.util.List; 

import com.comviva.entity.Emp;

public interface IEmpDao {

	public List<Emp> getEmployee();
	public List<Emp> getEmployee(String deptName);
	public Emp getEmployee(int eid);
	public boolean addEmployee(Emp emp);
	
}
