package com.bank.controller;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bank.model.MemberType;
import com.bank.service.MemberTypeService;

@Controller
@RequestMapping(value="/master/member-type")
public class MemberTypeController {

	private MemberTypeService memberTypeService;
	
	@Autowired
	public MemberTypeController(MemberTypeService memberTypeService) {
		this.memberTypeService = memberTypeService;
	}
	
	
	@RequestMapping( method=RequestMethod.GET)
	public String showMemberTypes(Model model) {
		
		Collection<MemberType> results = memberTypeService.findAllMemberTypes();
		MemberType memberType = new MemberType();
		model.addAttribute("memberType", memberType);
		model.addAttribute("memberTypes", results);
		return "memberType";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String initaccountMasterTypeCreationForm(Model model) {
		MemberType memberType = new MemberType();
		model.addAttribute("memberType", memberType);
		return "addMemberTypeForm";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String processCreationForm(@ModelAttribute MemberType memberType) {
		memberTypeService.add(memberType);
		return "redirect:/master/member-type";
	}
	
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.DELETE)
    public String deleteBooking(@PathVariable Long id) {
	memberTypeService.delete(id);
	return "redirect:/master/member-type";
    }
}
