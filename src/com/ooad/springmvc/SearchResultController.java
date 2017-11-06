package com.ooad.springmvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import util.LoginStatus;

@Controller
public class SearchResultController {
	
	private LoginStatus loginStatus = LoginStatus.getInstance();

   @RequestMapping(value = "/searchResult", method = RequestMethod.GET)
   public String showPage(ModelMap model, @RequestParam("content") String content) {
	   if (loginStatus.isLogin()) {
		   System.out.println(content);
		   model.addAttribute("phoneNumber", loginStatus.getUserPhoneNumber());
		   return "searchResult";
	   }
	   else							return "redirect:login";
   }
   
}
