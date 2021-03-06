package com.bank.controller;

import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bank.model.AccountType;
import com.bank.model.DepositAccountType;
import com.bank.model.LoanAccountType;
import com.bank.model.VerificationDocument;
import com.bank.service.AccountTypeService;
import com.bank.service.MasterDataLoaderService;
import com.bank.service.VerificationDocumentService;
import com.bank.utils.AjaxUtils;

@RestController
@RequestMapping("/master/account-type")
@SessionAttributes("accountType")
public class AccountTypeController {

	private AccountTypeService accountTypeService;
	private MasterDataLoaderService masterDataLoaderService;
	private VerificationDocumentService verificationDocumentService;
	private final String BASE_URL = "master/account-type";

	@Autowired
	public AccountTypeController(AccountTypeService accountTypeService,
			MasterDataLoaderService masterDataLoaderService,
			VerificationDocumentService verificationDocumentService) {
		this.accountTypeService = accountTypeService;
		this.masterDataLoaderService = masterDataLoaderService;
		this.verificationDocumentService = verificationDocumentService;
	}

	@ModelAttribute
	public void ajaxAttribute(WebRequest request, Model model) {
		model.addAttribute("ajaxRequest", AjaxUtils.isAjaxRequest(request));
	}

	/*
	 * @ModelAttribute public void getAccountTypeList(Model model) {
	 * Collection<AccountType> resluts =
	 * accountTypeService.findAllAccountType();
	 * model.addAttribute("accountTypes", resluts); }
	 */

	/**
	 * Show all Account types.
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String showAccountTypes(Model model) {
		Collection<AccountType> accountTypes = accountTypeService
				.findAllAccountType();
		model.addAttribute("accountTypes", accountTypes);
		model.addAttribute("operation", "view");
		model.addAttribute("baseUrl", BASE_URL);
		return "viewAccountType";
	}

	/**
	 * Show new Account type creation page. This method is only show the form to
	 * create a new account type.
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String initAccountTypeCreationForm(Model model, boolean ajaxRequest) {
		model.addAttribute("baseUrl", BASE_URL);
		return "createOrUpdateAccounttypeForm";
	}

	@RequestMapping(value = "/addAjax", method = RequestMethod.GET)
	public String initaccountMasterTypeCreationFormAjax(
			@RequestParam("accountType") String type, Model model) {
		model.addAttribute("baseUrl", "master/member-type");
		Map<String, List<VerificationDocument>> vdocs = new HashMap<String, List<VerificationDocument>>();
		List<String> verificationDocuemntTypes = masterDataLoaderService.getMasterTableData().getMap().get("verificationDocumentTypes");
		for(String documentType : verificationDocuemntTypes) {
			vdocs.put(documentType, verificationDocumentService.findAllDocumentsByType(documentType));
		}
		model.addAttribute("verificationDocuemntTypes", verificationDocuemntTypes);
		model.addAttribute("vdocs", vdocs);
		if ("Loan".equals(type)) {
			model.addAttribute("accountType", new LoanAccountType());
			model.addAttribute(
					"penaltyCalculationMode",
					masterDataLoaderService.getMasterTableData().getMap()
							.get("penaltyCalculationMode"));
			return "LoanAccountAjaxForm";
		} else {
			model.addAttribute("accountType", new DepositAccountType());
			model.addAttribute(
					"interestCalculationMode",
					masterDataLoaderService.getMasterTableData().getMap()
							.get("interestCalculationMode"));
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
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String processCreationForm(
			@ModelAttribute("accountType") AccountType accountType,
			SessionStatus sessionStatus, RedirectAttributes redirectAttributes) {
		accountTypeService.saveAccountType(accountType);
		sessionStatus.setComplete();
		String message = "Account Type created successfully.";
		redirectAttributes.addFlashAttribute("message", message);
		return "redirect:/" + BASE_URL + "/add";
	}

	/**
	 * Show delete account page. This page show all the account types with a
	 * checkbox to select for deletion.
	 * 
	 * @return
	 */
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String initDeleteAccountType(Model model) {
		Collection<AccountType> accountTypes = accountTypeService
				.findAllAccountType();
		model.addAttribute("accountTypes", accountTypes);
		model.addAttribute("baseUrl", BASE_URL);
		return "deleteAccountType";
	}

	@RequestMapping(value = "/{id}/delete", method = RequestMethod.POST)
	public String deleteAccountType(@RequestParam("deleted") String[] deleted) {
		for (String id : deleted) {
			accountTypeService.deleteAccountType(Long.valueOf(id));
		}
		return "redirect:/" + BASE_URL + "/delete";
	}

	@RequestMapping(value = "/edit")
	public String editAccountType(Model model) {
		Collection<AccountType> accountTypes = accountTypeService
				.findAllAccountType();
		model.addAttribute("accountTypes", accountTypes);
		model.addAttribute("operation", "edit");
		model.addAttribute("baseUrl", BASE_URL);
		return "editAccountType";
	}

	@RequestMapping(value = "{id}/edit", method = RequestMethod.GET)
	public String initEditAccountTypeForm(@PathVariable("id") Long id,
			Model model) {
		AccountType accountType = accountTypeService.findAccountTypeById(id);
		model.addAttribute(accountType);
		model.addAttribute("baseUrl", BASE_URL);
		return "addAccountType";
	}

	@RequestMapping(value = "/edit", method = RequestMethod.PUT)
	public String editAccountType(@ModelAttribute AccountType accountType,
			SessionStatus sessionStatus, RedirectAttributes redirectAttributes) {
		accountTypeService.saveAccountType(accountType);
		sessionStatus.setComplete();
		String message = "Account Type updated successfully.";
		redirectAttributes.addFlashAttribute("message", message);
		return "redirect:/" + BASE_URL + "/edit";
	}
}
