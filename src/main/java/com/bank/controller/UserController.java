package com.bank.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bank.model.User;
import com.bank.service.UserService;
import com.bank.validator.UserValidator;

import exception.UserNotRegisteredException;

@Controller
public class UserController {
	
	private static Logger logger = LoggerFactory
			.getLogger(UserController.class);
	
	@Autowired
	private UserService userService;
	@Autowired
	private UserValidator userValidator;
	
	/*@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView showRegistrationForm() {
		logger.info("Received request to show register page");
		
		ModelAndView mav = new ModelAndView("register") ;
		mav.addObject("registrationForm", registrationForm); 
		return mav;
		
		throw new OperationFailedException(
				"Oopss..... system is not able to register new customer. Sorry for inconvenience, please try later");
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(
			@ModelAttribute("registrationForm") RegistrationForm registrationForm,
			BindingResult result) {

		registrationFormValidator.validate(registrationForm, result);
		User user = null;
		if (result.hasErrors()) {
			return "register";
		} else {
			user = new User();
			user.setUsername(registrationForm.getUsername());
			user.setPassword(registrationForm.getPassword());
			userService.add(user);
			logger.info("A new user with username"
					+ registrationForm.getUsername()
					+ "registered successfully");
			return "redirect:/user/login";
		}
	}*/

	@RequestMapping(value = {"/", "/login"}, method = RequestMethod.GET)
	public String showLoginPage(@ModelAttribute("user") User user) {
		logger.debug("Received request to show login page");
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute("user") User user, BindingResult result) {
		userValidator.validate(user, result);
		if (result.hasErrors()) {
			return "login";
		} else
			try {
				if (userService.checkLogin(user.getUsername(),
						user.getPassword())) {
					userService.setCurrentUser(userService.getByUsername(user
							.getUsername()));
					logger.info("User " + user.getUsername() + "logged in");
					return "redirect:/home";
				} else {
					return "redirect:/user/login";
				}
			} catch (UserNotRegisteredException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return "redirect:/user/login";
			}
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout() {
		logger.info("User" + userService.getCurrentUser().getUsername()
				+ "requested to logged out");
		userService.setCurrentUser(null);
		return "redirect:/home";
	}

	@RequestMapping(value = "/info", method = RequestMethod.GET)
	public String showPersonalInfo(@ModelAttribute("user") User user) {
		user = userService.getCurrentUser();
		if (user != null) {
			return "userinfo";
		} else {
			return "redirect:/user/login";
		}
	}

	/*@RequestMapping(value = "/info", method = RequestMethod.POST)
	public @ResponseBody
	String updatePersonalInfo(@ModelAttribute("user") User user,
			BindingResult result) {

		String responseText = "";
		userValidator.validate(user, result);
		if (result.hasErrors()) {
			responseText = "Your profile has problems so can't be update";
		} else {
			userService.update(user);
			responseText = "Your profile is successfully updated";
		}
		return responseText;
	}

	@RequestMapping(value = "/changepassword", method = RequestMethod.GET)
	public ModelAndView showChangePasswordPage() {
		ModelAndView modelAndView = new ModelAndView("changePassword");
		modelAndView.addObject("changePasswordForm", changePasswordForm);
		return modelAndView;
	}

	@RequestMapping(value = "/changepassword", method = RequestMethod.POST)
	public String changePassword(
			@ModelAttribute("changePasswordForm") ChangePasswordForm changePasswordForm,
			BindingResult result, User user) {
		changePasswordFormValidator.validate(changePasswordForm, result);
		if (result.hasErrors()) {
			return "changePassword";
		} else {
			userService.changePassword(userService.getCurrentUser()
					.getUsername(), changePasswordForm.getOldPassword(),
					changePasswordForm.getNewPassword());
			return "redirect:/user/info";
		}
	}*/

	@RequestMapping(value = "/profileSettings", method = RequestMethod.GET)
	public String showProfileSettingsPage() {
		return "profileSettings";
	}

	@RequestMapping(value = "/profileSettings", method = RequestMethod.POST)
	public String profileSettings() {
		return "profileSettings";
	}

	@RequestMapping(value = "/remove", method = RequestMethod.POST)
	public void remove() {
		// userService.remove(user.);
	}

}
