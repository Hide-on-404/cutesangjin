package com.hideon.myapp;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@RequestMapping("/")
	public String main(Locale locale, Model model) {
		return "main";
	}
	
	@RequestMapping("/share")
	public String main1(Locale locale, Model model) {
	    return "share";
	}
	
	@RequestMapping("/recruitment")
	public String main2(Locale locale, Model model) {
	    return "recruitment";
	}
	
	/*
	 * @RequestMapping("/vote") public String main3(Locale locale, Model model) {
	 * return "vote/vote"; }
	 */
}