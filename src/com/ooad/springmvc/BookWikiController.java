package com.ooad.springmvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import util.LoginStatus;

@Controller
public class BookWikiController {

	private LoginStatus loginStatus = LoginStatus.getInstance();
	
   @RequestMapping(value = "/bookWiki", method = RequestMethod.GET)
   public String showPage(ModelMap model, @RequestParam("isbn") String isbn) {
	   if (loginStatus.isLogin()) {
		   System.out.println(isbn);
		   model.addAttribute("phoneNumber", loginStatus.getUserPhoneNumber());
		   return "bookWiki";
	   }
	   else							return "redirect:login";
   }
	
}
