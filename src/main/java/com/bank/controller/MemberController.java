package com.bank.controller;

import java.util.Collection;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.bank.model.Member;
import com.bank.service.MemberService;

/**
 * 
 * @author Ajay
 *
 */
@Controller
public class MemberController {
	private final MemberService memberService;

	@Autowired
	public MemberController(MemberService memberService) {
		this.memberService = memberService;
	}

	@InitBinder
	public void setAllowedFields(WebDataBinder dataBinder) {
		dataBinder.setDisallowedFields("id");
	}

	@RequestMapping(value="/members/add", method=RequestMethod.GET)
	public String initCreationForm(Map<String, Object> model) {
		Member member = new Member();
		model.put("member", member);
		return "createOrUpdateMemberForm";
	}

	@RequestMapping(value="/members/add", method=RequestMethod.POST)
	public String processCreationForm(@Valid Member member,
			BindingResult result, SessionStatus status) {
		if (result.hasErrors()) {
			return "members/createOrUpdateMemberForm";
		} else {
			this.memberService.save(member);
			status.setComplete();
			return "redirect:/members/" + member.getId();
		}
	}
	
	@RequestMapping(value="/members/view", method=RequestMethod.GET)
	public String showMember(Map<String, Object> model) {
		Member member = new Member();
		model.put("member", member);
		return "members/createOrUpdateMemberForm";
	}

	@RequestMapping(value = "/members/find", method = RequestMethod.GET)
	public String initFindForm(Map<String, Object> model) {
		model.put("member", new Member());
		return "members/findMembers";
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

	@RequestMapping(value = "/members/{memberId}/edit", method = RequestMethod.GET)
	public String initUpdateMemberForm(@PathVariable("memberId") Long memberId,
			Model model) {
		Member member = this.memberService.findById(memberId);
		model.addAttribute(member);
		return "members/createOrUpdateMemberForm";
	}

	@RequestMapping(value = "/members/{memberId}/edit", method = RequestMethod.PUT)
	public String processUpdateMemberForm(@Valid Member member,
			BindingResult result, SessionStatus status) {
		if (result.hasErrors()) {
			return "members/createOrUpdateMemberForm";
		} else {
			this.memberService.save(member);
			status.setComplete();
			return "redirect:/members/{memberId}";
		}
	}

	/**
	 * Custom handler for displaying an member.
	 * 
	 * @param memberId
	 *            the ID of the member to display
	 * @return a ModelMap with the model attributes for the view
	 */
	@RequestMapping("/members/{memberId}")
	public ModelAndView showMember(@PathVariable("memberId") Long memberId) {
		ModelAndView mav = new ModelAndView("members/memberDetails");
		mav.addObject(this.memberService.findById(memberId));
		return mav;
	}
}
