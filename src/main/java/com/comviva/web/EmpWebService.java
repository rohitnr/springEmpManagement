package com.comviva.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.comviva.dao.IEmpDao;
import com.comviva.entity.Emp;

@RestController
public class EmpWebService {

	@Autowired
	private IEmpDao dao;
	
	@GetMapping("/getall")
	public List<Emp> getEmployee(){
		return dao.getEmployee();
	}
}
