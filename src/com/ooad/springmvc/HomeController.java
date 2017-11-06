package com.ooad.springmvc;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import util.LoginStatus;

@Controller
public class HomeController {
	
	private LoginStatus loginStatus = LoginStatus.getInstance();
	
   @RequestMapping(value = "/home", method = RequestMethod.GET)
   public String showPage(ModelMap model) {
	   
	  // TODO: read all friends in this User
	  // TODO: 生成前端页面
	  
	  // 假设他有两个书友，号码分别为13000000000和13000000001
	   
	   if (loginStatus.isLogin()) {
		   model.addAttribute("phoneNumber", loginStatus.getUserPhoneNumber());
		   return "home";
	   }
	   else							return "redirect:login";
	   
   }

}
