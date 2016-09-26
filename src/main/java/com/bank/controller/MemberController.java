package com.bank.controller;

import java.util.Collection;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.bank.model.Member;
import com.bank.service.MasterDataLoaderService;
import com.bank.service.MemberService;

/**
 * This is a controller which exposes APIs for member related operations
 * @author Ajay Gupta
 * @since 1.0
 */

@RestController
@RequestMapping("/members")
public class MemberController {
	private final MemberService memberService;
	private MasterDataLoaderService masterDataLoaderService;

	@Autowired
	public MemberController(MemberService memberService, MasterDataLoaderService masterDataLoaderService) {
		this.memberService = memberService;
		this.masterDataLoaderService = masterDataLoaderService;
	}

	@RequestMapping(value={"/member-info" ,"/member-info/add"}, method=RequestMethod.GET)
	public String initCreationForm(Model model) {
		Member member = new Member();
		model.addAttribute("member", member);
		model.addAttribute("genderList", masterDataLoaderService.getMasterTableData().getMap().get("genders"));;
		model.addAttribute("relations", masterDataLoaderService.getMasterTableData().getMap().get("relations"));
		model.addAttribute("maritalStatusList", masterDataLoaderService.getMasterTableData().getMap().get("maritalStatus"));;
		model.addAttribute("religionList", masterDataLoaderService.getMasterTableData().getMap().get("religions"));
		//model.addAttribute("casteCategoryList", getCasteCategoryList());
		model.addAttribute("occupationList", masterDataLoaderService.getMasterTableData().getMap().get("occupations"));
		model.addAttribute("educationalQualificationList", masterDataLoaderService.getMasterTableData().getMap().get("qualifications"));
		return "createOrUpdateMemberForm";
	}

	@RequestMapping(value="/", method=RequestMethod.GET)
	public void getAllMembers(@RequestBody Member member) {
		memberService.save(member);
	}
	
	@RequestMapping(value = "/{memberId}", method = RequestMethod.PUT, consumes = MediaType.APPLICATION_JSON_VALUE, produces = MediaType.APPLICATION_JSON_VALUE)
	public void updateMember(@Valid Member member) {
		this.memberService.save(member);
	}
	
	@RequestMapping(value="/", method=RequestMethod.POST)
	public void addMember(@RequestBody Member member) {
		memberService.save(member);
	}
		
	@RequestMapping(value="/member-account")
	public String initMemberAccountCreationForm(Model model) {
		Member member = new Member(); 
		model.addAttribute("member", member);
		return "createOrUpdateMemberAccountForm";
		
	}
	
	@RequestMapping(value = "/members", method = RequestMethod.GET)
	public String processFindForm(Member member, BindingResult result,
			Map<String, Object> model) {

		// allow parameterless GET request for /members to return all records
		if (member.getLastName() == null) {
			member.setLastName(""); // empty string signifies broadest possible
									// search
		}

		// find members by last name
		Collection<Member> results = this.memberService
				.findMemberByLastName(member.getLastName());
		if (results.size() < 1) {
			// no members found
			result.rejectValue("lastName", "notFound", "not found");
			return "members/findMembers";
		}
		if (results.size() > 1) {
			// multiple members found
			model.put("selections", results);
			return "members/membersList";
		} else {
			// 1 member found
			member = results.iterator().next();
			return "redirect:/members/" + member.getId();
		}
	}

	

	/**
	 * Custom handler for displaying an member.
	 * 
	 * @param memberId
	 *            the ID of the member to display
	 * @return a ModelMap with the model attributes for the view
	 */
	@RequestMapping(value = "/{memberId}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public Member getMember(@PathVariable("memberId") Long memberId) {
		return this.memberService.findById(memberId);
	}
	
}
