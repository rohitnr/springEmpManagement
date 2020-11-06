package com.comviva.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.comviva.dao.IEmpDao;
import com.comviva.entity.Emp;
@Controller
public class AddEmpController {

	@Autowired
	private IEmpDao dao;

	@GetMapping("/displayaddform")
	public String displayAddEmpForm(Model model) {
		List<String> dlist = new ArrayList<>();
		dlist.add("hr");
		dlist.add("pr");
		model.addAttribute("dlist", dlist);
		return "AddEmpForm";
	}
	@PostMapping("/addemp")
	public String addEmployee(@ModelAttribute("emodel") Emp emp,Model model) {
		try {
			dao.addEmployee(emp);
			model.addAttribute("msg", "Employee Added Successfully");
			model.addAttribute("emodel", new Emp());// clearing text boxes value in view
		}catch(Exception ex) {
			model.addAttribute("msg", "Employee Not Added");
		}
		List<String> dlist = new ArrayList<>();
		dlist.add("hr");
		dlist.add("pr");
		model.addAttribute("dlist", dlist);
		return "AddEmpForm";
	}
}




