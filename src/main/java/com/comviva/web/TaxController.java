package com.comviva.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TaxController {

	@GetMapping("/taxform")
	public String displayTaxForm() {
		return "TaxForm";
	}
	
	@GetMapping("/tax")
	public String calculateTax(@RequestParam("txtincome") double income ,Model model) {
		double tax =0;
		if(income > 1000000)
			tax = (500000 * 0.1) + (income - 1000000)* 0.15;
		else if(income > 500000)
			tax = (income-500000) * 0.1;
		tax=Math.round(tax *100)/100.0;
		model.addAttribute("taxresult", tax);
		return "TaxSubmit";
		
	}
}
