package com.comviva.web;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class EmiController {
	
	@Value("${ratePercent}")
	private double rate;
	
	@GetMapping("/emiform")
	public String displayEmiForm() {
		return "EmiForm";
	}
	
	@PostMapping("/emi")
    public String calcEmi(@RequestParam("txtloanamt") double amt, 
    		@RequestParam("txtyears") int years,
    		Model model){
		double ci = amt * Math.pow((1+rate), years);
		ci = Math.round(ci*100)/100.0;
		double emi= ci/(years * 12);
		emi=Math.round(emi * 100)/100.0;
		model.addAttribute("totalamt", ci);
		model.addAttribute("monthlyamt", emi);
    	return "Emisubmit";
    }
}