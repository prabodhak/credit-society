package com.bank.controller;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

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
		model.addAttribute("memberTypes", results);
		return "memberType";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String initaccountMasterTypeCreationForm(Model model) {
		model.addAttribute("memberType", new MemberType());
		return "addMemberTypeForm";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String processCreationForm(@ModelAttribute("memberType") MemberType memberType, SessionStatus sessionStatus) {
		memberTypeService.add(memberType);
		sessionStatus.setComplete();
		return "redirect:/master/member-type/add";
	}
	
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.DELETE)
    public String deleteMemberType(@PathVariable Long id) {
	memberTypeService.delete(id);
	return "redirect:/master/member-type";
    }
	
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
    public String updateMemberType(@ModelAttribute MemberType memberType, SessionStatus sessionStatus) {
	memberTypeService.save(memberType);
	sessionStatus.setComplete();
	return "redirect:/master/member-type";
    }
}
