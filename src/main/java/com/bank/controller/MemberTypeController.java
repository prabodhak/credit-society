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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	
	@RequestMapping(value="/view", method=RequestMethod.GET)
	public String showMemberTypes(Model model) {
		Collection<MemberType> results = memberTypeService.findAllMemberTypes();
		model.addAttribute("memberTypes", results);
		return "viewMemberType";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String initaccountMasterTypeCreationForm(Model model) {
		model.addAttribute("memberType", new MemberType());
		return "addMemberTypeForm";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String processCreationForm(@ModelAttribute("memberType") MemberType memberType, SessionStatus sessionStatus, RedirectAttributes redirectAttributes) {
		memberTypeService.add(memberType);
		sessionStatus.setComplete();
		String message = "Member Type created successfully.";
		redirectAttributes.addFlashAttribute("message", message);
		return "redirect:/master/member-type/add";
	}
	
	/*
	 * When a user hit the url "/delete" we will show the same "/view" page with
	 * one extra column "delete checkbox". That's why the return view name of
	 * this is same as "/view". For showing extra column we are adding a boolean
	 * attribute in model.
	 */
	@RequestMapping(value="/delete", method=RequestMethod.GET)
	public String initDeleteMemberType(Model model) {
		model.addAttribute("delete", Boolean.TRUE);
		return "viewMemberType";
	}
	
	@RequestMapping(value = "/{id}/delete", method = RequestMethod.DELETE)
    public String deleteMemberType(@PathVariable Long id) {
	memberTypeService.delete(id);
	return "redirect:/master/member-type";
    }
	
	@RequestMapping(value="/edit")
	public String editMemberType() {
		return "editMemberType";
	}
	
	/*
	 * When a user try to edit a member type we will show the same form as
	 * member type creation.
	 */
	@RequestMapping(value="/{id}/edit", method=RequestMethod.GET)
	public String initEditMemberTypeForm(@PathVariable("id") Long id, Model model) {
		MemberType memberType = memberTypeService.findMemberType(id);
		model.addAttribute(memberType);
		return "addMemberTypeForm";
	}
	
	@RequestMapping(value = "/{id}/edit", method = RequestMethod.PUT)
    public String updateMemberType(@ModelAttribute MemberType memberType, SessionStatus sessionStatus, RedirectAttributes redirectAttributes) {
	memberTypeService.save(memberType);
	sessionStatus.setComplete();
	String message = "Member Type updated successfully.";
	redirectAttributes.addFlashAttribute("message",message);
	return "redirect:/master/member-type/edit";
    }
}
