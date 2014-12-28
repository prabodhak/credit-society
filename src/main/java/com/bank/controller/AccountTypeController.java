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
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bank.model.AccountType;
import com.bank.model.DepositAccountType;
import com.bank.model.LoanAccountType;
import com.bank.service.AccountTypeService;
import com.bank.utils.AjaxUtils;

@Controller
@RequestMapping("/master/account-type")
@SessionAttributes("accountType")
public class AccountTypeController {

	private AccountTypeService accountTypeService;
	
	@Autowired
	public AccountTypeController(AccountTypeService accountTypeService) {
		this.accountTypeService = accountTypeService;
	}
	
	@ModelAttribute
	public void ajaxAttribute(WebRequest request, Model model) {
		model.addAttribute("ajaxRequest", AjaxUtils.isAjaxRequest(request));
	}
	
	/*@ModelAttribute
	public void getAccountTypeList(Model model) {
		Collection<AccountType> resluts = accountTypeService.findAllAccountType();
		model.addAttribute("accountTypes", resluts);
	}*/
	
	/**
	 * Show all Account types.
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/view", method=RequestMethod.GET)
	public String showAccountTypes(Model model) {
		Collection<AccountType> accounts = accountTypeService.findAllAccountType();
		model.addAttribute("accounts", accounts);
		model.addAttribute("operation", "view");
		model.addAttribute("baseUrl", "master/account-type");
		return "viewAccountType";
	}
	
	/**
	 * Show new Account type creation page. This method is only show the form to
	 * create a new account type.
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/add", method=RequestMethod.GET)
	public String initAccountTypeCreationForm(Model model, boolean ajaxRequest) {
		AccountType accountType = new AccountType();
		model.addAttribute(accountType);
		model.addAttribute("baseUrl", "master/account-type");
		return "createOrUpdateAccounttypeForm";
	}
	
	@RequestMapping(value="/addAjax", method=RequestMethod.GET)
	public String initaccountMasterTypeCreationFormAjax(@RequestParam("accountType") String type, Model model) {
		model.addAttribute("baseUrl", "master/member-type");
		if("Loan".equals(type)) {
			model.addAttribute("accountType", new LoanAccountType());
			return "LoanAccountAjaxForm";
		}
		else {
			model.addAttribute("accountType", new DepositAccountType());
			return "DepositAccountAjaxForm";
		}		
	}
	
	/**
	 * Create a new Account Type. This method takes data from new account type
	 * creation form and create totally new account type.
	 * 
	 * @param accountType
	 * @param sessionStatus
	 * @return
	 */
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String processCreationForm(@ModelAttribute("accountType") AccountType accountType, SessionStatus sessionStatus, RedirectAttributes redirectAttributes) {
		accountTypeService.saveAccountType(accountType);
		sessionStatus.setComplete();
		String message = "Account Type created successfully.";
		redirectAttributes.addFlashAttribute("message", message);
		return "redirect:/master/account-type/add";
	}
	
	/**
	 * Show delete account page. This page show all the account types with a
	 * checkbox to select for deletion.
	 * 
	 * @return
	 */
	@RequestMapping(value="/delete", method=RequestMethod.GET)
	public String initDeleteAccountType() {
		return "deleteAccountType";
	}
	
	@RequestMapping(value="/{id}/delete", method=RequestMethod.DELETE)
	public String deleteAccountType(Long accountId) {
		accountTypeService.deleteAccountType(accountId);
		return "redirect:/master/account-type/delete";
	}
	
	@RequestMapping(value="/edit")
	public String editAccountType() {
		return "editAccountType";
	}
	
	@RequestMapping(value="{id}/edit", method=RequestMethod.GET)
	public String initEditAccountTypeForm(@PathVariable("id") Long id, Model model) {
		AccountType accountType = accountTypeService.findAccountTypeById(id);
		model.addAttribute(accountType);
		return "addAccountType";
	}
	
	@RequestMapping(value="/edit", method=RequestMethod.PUT)
	public String editAccountType(@ModelAttribute AccountType accountType, SessionStatus sessionStatus) {
		accountTypeService.saveAccountType(accountType);
		sessionStatus.setComplete();
		return "redirect:/master/account-type/edit";
	}
}
