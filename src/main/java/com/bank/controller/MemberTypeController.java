package com.bank.controller;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bank.model.MemberType;
import com.bank.service.MemberTypeService;

@Controller
@RequestMapping(value="/master/member-type")
@SessionAttributes("memberType")
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
		model.addAttribute("operation", "view");
		model.addAttribute("baseUrl", "master/member-type");
		return "viewMemberType";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String initaccountMasterTypeCreationForm(Model model) {
		model.addAttribute("memberType", new MemberType());
		model.addAttribute("baseUrl", "master/member-type");
		return "createOrUpdateMemberTypeForm";
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
	 * attribute in model. In this jsp we check this boolean flag and display
	 * the delete column accordingly.
	 */
	@RequestMapping(value="/delete", method=RequestMethod.GET)
	public String initDeleteMemberType(Model model) {
		Collection<MemberType> results = memberTypeService.findAllMemberTypes();
		model.addAttribute("memberTypes", results);
		model.addAttribute("baseUrl", "master/member-type");
		return "deleteMemberType";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String deleteMemberType(@RequestParam("deleted") String[] deleted)  {
		for(String name : deleted) {
			memberTypeService.delete(Long.valueOf(name));
		}
		return "redirect:/master/member-type/delete";
    }
	
	@RequestMapping(value="/edit")
	public String editMemberType(Model model) {
		Collection<MemberType> results = memberTypeService.findAllMemberTypes();
		model.addAttribute("memberTypes", results);
		model.addAttribute("operation", "edit");
		model.addAttribute("baseUrl", "master/member-type");
		return "viewMemberType";
	}
	
	/*
	 * When a user try to edit a member type we will show the same form as
	 * member type creation.
	 */
	@RequestMapping(value="/{id}/edit", method=RequestMethod.GET)
	public String initEditMemberTypeForm(@PathVariable("id") Long id, Model model) {
		MemberType memberType = memberTypeService.findMemberType(id);
		model.addAttribute(memberType);
		model.addAttribute("baseUrl", "master/member-type");
		return "createOrUpdateMemberTypeForm";
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.PUT)
    public String updateMemberType(@ModelAttribute MemberType memberType, SessionStatus sessionStatus, RedirectAttributes redirectAttributes) {
	memberTypeService.save(memberType);
	sessionStatus.setComplete();
	String message = "Member Type updated successfully.";
	redirectAttributes.addFlashAttribute("message",message);
	return "redirect:/master/member-type/edit";
    }
}
