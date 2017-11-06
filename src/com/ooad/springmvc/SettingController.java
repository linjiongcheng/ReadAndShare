package com.ooad.springmvc;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import model.ChangePassword;
import model.LoginUser;
import model.SettingUser;
import util.DBConnection;
import util.IDBConnection;
import util.LoginStatus;

@Controller
public class SettingController {
	
	private IDBConnection dBConnection = DBConnection.getInstance();

	private LoginStatus loginStatus = LoginStatus.getInstance();
	
   @RequestMapping(value = "/setting", method = RequestMethod.GET)
   public String showPage(ModelMap model) {
	   if (loginStatus.isLogin()) {
		   model.addAttribute("phoneNumber", loginStatus.getUserPhoneNumber());
		   return "setting";
	   }
	   else							return "redirect:login";
   }
   
   @RequestMapping(value = "/settingUser", method = RequestMethod.POST)
   public String loginUser(@ModelAttribute("SpringWeb")SettingUser settingUser, RedirectAttributes redirectAttributes) {
	   String account = LoginStatus.getInstance().getUserPhoneNumber(); 

	   String name = settingUser.getName();
	   String gender = settingUser.getInputGender();
	   String email = settingUser.getEmail();
	   String we_chat = settingUser.getWe_chat();
	   String qq = settingUser.getQq();
	   String school = settingUser.getSchool();
	   String major = settingUser.getMajor();
	   String bio = settingUser.getBio();
	   
	   dBConnection.connSQL();
	   String update = "update user set name='" + name + "'"
			   + ", gender='" + gender + "'"
			   + ", email='" + email + "'"
			   + ", we_chat='" + we_chat + "'"
			   + ", qq='" + qq + "'"
			   + ", school='" + school + "'"
			   + ", major='" + major + "'"
			   + ", bio='" + bio + "'"
			   + "where account='" + account + "'";
	   dBConnection.updateSQL(update);
	   dBConnection.deconnSQL();

	   return "redirect:setting";
   }
   
   @RequestMapping(value = "/changePassword", method = RequestMethod.POST)
   public String changePassword(@ModelAttribute("SpringWeb")ChangePassword changePassword, RedirectAttributes redirectAttributes) {
	   String account = LoginStatus.getInstance().getUserPhoneNumber(); 

	   String oldPassword = changePassword.getOldPassword();
	   String newPassword1 = changePassword.getNewPassword1();
	   String newPassword2 = changePassword.getNewPassword2();
	   
	   if(!newPassword1.equals(newPassword2)){
		   System.out.println("两次密码不相等");
		   return "redirect:setting";
	   }
	   
	   dBConnection.connSQL();
	   
	   String select = "select * from user where account='" + account + "'";
	   ResultSet resultSet = dBConnection.selectSQL(select);
	   try {
		   if(!resultSet.next()){
			   System.out.println("没有找到账号");
			   return "redirect:setting";
		   }else{
			   if(!resultSet.getString("password").equals(oldPassword)){
				   System.out.println("旧密码不相等");
				   return "redirect:setting";
			   }
		   }
	   } catch (SQLException e) {
		   // TODO Auto-generated catch block
		   e.printStackTrace();
	   }
	   dBConnection.deconnSQL();
	   
	   
	   dBConnection.connSQL();
	   String update = "update user set password='" + newPassword1 + "'"
			   + "where account='" + account + "'";
	   System.out.println("写入新密码");
	   dBConnection.updateSQL(update);
	   dBConnection.deconnSQL();

	   return "redirect:setting";
   }

}
