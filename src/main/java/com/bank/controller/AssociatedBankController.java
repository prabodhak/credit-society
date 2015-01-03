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

import com.bank.model.AssociatedBank;
import com.bank.service.AssociatedBankService;

@Controller
@SessionAttributes("associatedBank")
@RequestMapping(value="/master/associated-bank")
public class AssociatedBankController {
	private AssociatedBankService associatedBankService;
	private final String BASE_URL = "master/associated-bank";
	
	@Autowired
	public AssociatedBankController(AssociatedBankService associatedBankService) {
		this.associatedBankService = associatedBankService;
	}
	
	@RequestMapping(value="/view", method=RequestMethod.GET)
	public String showAllAssociatedBanks(Model model) {
		Collection<AssociatedBank> associatedBanks = associatedBankService.findAllAssociatedBanks();
		model.addAttribute("operation", "view");
		model.addAttribute("baseUrl", BASE_URL);
		model.addAttribute("associatedBanks", associatedBanks);
		return "viewAssociatedBank";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String initAssociatedBankCreationForm(Model model) {
		model.addAttribute("associatedBank", new AssociatedBank());
		model.addAttribute("baseUrl", BASE_URL);
		return "createOrUpdateAssociatedBankForm";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String processCreationForm(@ModelAttribute("associatedBank") AssociatedBank associatedBank, SessionStatus sessionStatus, RedirectAttributes redirectAttributes) {
		associatedBankService.add(associatedBank);
		sessionStatus.setComplete();
		String message = "Associated Bank created successfully.";
		redirectAttributes.addFlashAttribute("message", message);
		return "redirect:/" + BASE_URL + "/add";
	}
	
	/*
	 * When a user hit the url "/delete" we will show the same "/view" page with
	 * one extra column "delete checkbox". That's why the return view name of
	 * this is same as "/view". For showing extra column we are adding a boolean
	 * attribute in model. In this jsp we check this boolean flag and display
	 * the delete column accordingly.
	 */
	@RequestMapping(value="/delete", method=RequestMethod.GET)
	public String initDeleteAssociatedBank(Model model) {
		Collection<AssociatedBank> associatedBanks = associatedBankService.findAllAssociatedBanks();
		model.addAttribute("associatedBanks", associatedBanks);
		model.addAttribute("baseUrl", BASE_URL);
		return "deleteAddAssociatedBank";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String deleteAssociatedBank(@RequestParam("deleted") String[] deleted)  {
		for(String name : deleted) {
			associatedBankService.delete(Long.valueOf(name));
		}
		return "redirect:/" + BASE_URL + "/delete";
    }
	
	@RequestMapping(value="/edit")
	public String editMemberType(Model model) {
		Collection<AssociatedBank> associatedBanks = associatedBankService.findAllAssociatedBanks();
		model.addAttribute("associatedBanks", associatedBanks);
		model.addAttribute("operation", "edit");
		model.addAttribute("baseUrl", BASE_URL);
		return "viewAssociatedBank";
	}
	
	/*
	 * When a user try to edit a member type we will show the same form as
	 * member type creation.
	 */
	@RequestMapping(value="/{id}/edit", method=RequestMethod.GET)
	public String initEditAssociatedBankForm(@PathVariable("id") Long id, Model model) {
		AssociatedBank associatedBank = associatedBankService.findAssociatedBank(id);
		model.addAttribute(associatedBank);
		model.addAttribute("baseUrl", BASE_URL);
		return "createOrUpdateAssociatedBankForm";
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.PUT)
    public String updateAssociatedBank(@ModelAttribute AssociatedBank associatedBank, SessionStatus sessionStatus, RedirectAttributes redirectAttributes) {
	associatedBankService.save(associatedBank);
	sessionStatus.setComplete();
	String message = "Associated Bank updated successfully.";
	redirectAttributes.addFlashAttribute("message",message);
	return "redirect:/" + BASE_URL + "/edit";
    }
	
}
