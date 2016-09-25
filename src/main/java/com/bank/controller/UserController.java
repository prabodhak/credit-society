package com.bank.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.bank.exception.UserNotRegisteredException;
import com.bank.model.User;
import com.bank.service.UserService;
import com.bank.validator.UserValidator;

/**
 * Controller to expose APIs related to user operations like registration, login, logout and profile settings
 * @author Ajay Gupta
 * @since 1.0
 */

@RestController
@RequestMapping("/user")
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
	}*/

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public void register(@RequestBody User user) {
		logger.info("Received request to do new user registeration ");
		System.out.println("Received request to do new user registeration ");
		userService.save(user);
	}


	@RequestMapping(value = "/login", method = RequestMethod.POST, consumes = MediaType.APPLICATION_JSON_VALUE)
	public String login(@RequestBody User user, BindingResult result) {
		logger.info(String.format("Received request to do user login of username %s", user.getUsername()));
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

	@RequestMapping(value = "/get", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public User showPersonalInfo(@ModelAttribute("user") User user) {
		return user = userService.getCurrentUser();
		
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updatePersonalInfo(@RequestBody User user,
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

	/*@RequestMapping(value = "/changepassword", method = RequestMethod.POST)
	public String changePassword(
			@ModelAttribute("changePasswordForm") ChangePasswordForm changePasswordForm,
			BindingResult result, User user) {
		//changePasswordFormValidator.validate(changePasswordForm, result);
		if (result.hasErrors()) {
			return "changePassword";
		} else {
			userService.changePassword(userService.getCurrentUser()
					.getUsername(), changePasswordForm.getOldPassword(),
					changePasswordForm.getNewPassword());
			return "redirect:/user/info";
		}
	}*/

	@RequestMapping(value = "/profileSettings", method = RequestMethod.POST)
	public String profileSettings() {
		return "profileSettings";
	}

	@RequestMapping(value = "/remove", method = RequestMethod.POST)
	public void remove() {
		// userService.remove(user.);
	}

}
