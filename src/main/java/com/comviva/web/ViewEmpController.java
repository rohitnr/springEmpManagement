package com.comviva.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.comviva.dao.IEmpDao;
import com.comviva.entity.Emp;

@Controller
public class ViewEmpController {
	@Autowired
	private IEmpDao dao;

	@GetMapping("/viewall")
	public String displayViewAll(Model model) {
		model.addAttribute("elist", dao.getEmployee());
		return "EmpView";
	}

	@GetMapping("/viewdepts")
	public String displayDepts(Model model) {
		List<String> dlist = new ArrayList<>();
		dlist.add("hr");
		dlist.add("pr");
		model.addAttribute("dlist", dlist);
		return "DeptForm";
	}
//
	@GetMapping("/viewbydept")
	public String displayEmpByDept(@RequestParam("txtdept") String dept, Model model) {

		model.addAttribute("elist", dao.getEmployee(dept));
		return "EmpView";
	}

	@GetMapping("/viewempid")
	public String displayEmpIDForm() {

		return "EmpIdForm";
	}

	@GetMapping("/viewbyid")
	public String displayEmpByID(@RequestParam("txteid") int eid, Model model) {
		Emp emp = dao.getEmployee(eid);
		if (emp == null)
			model.addAttribute("msg", "No Employee found");
		else {
			List<Emp> emplist = new ArrayList<>();
			emplist.add(emp);
			model.addAttribute("elist", emplist);
		}
		return "EmpView";
	}
}
