package com.ooad.springmvc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.RegisterUser;
import util.DBConnection;
import util.IDBConnection;

@Controller
public class RegisterController{
	
	private IDBConnection dBConnection = DBConnection.getInstance();

   @RequestMapping(value = "/register", method = RequestMethod.GET)
   public ModelAndView showPage(ModelMap model) {
      return new ModelAndView("register", "command", new RegisterUser());
   }

   @RequestMapping(value = "/registerUser", method = RequestMethod.POST)
   public String registerUser(@ModelAttribute("SpringWeb")RegisterUser registerUser, 
   ModelMap model,HttpServletResponse response) throws SQLException, IOException {
	  
      String phoneNumber = registerUser.getPhoneNumber();
      String password1 = registerUser.getPassword1();
      String password2 = registerUser.getPassword2();
      
	   String selectSql = "select * from user ";
	   ResultSet resultSet = dBConnection.selectSQL(selectSql);
	   response.setContentType("text/html;charset=UTF-8");
	   PrintWriter out = response.getWriter();
	   while(resultSet.next())
	   {
		  if(phoneNumber.equals(resultSet.getString("account"))){
			  System.out.println("用户已存在！");
//			  System.out.println(out.toString());
			  out.print("<script language=\"javascript\">alert('用户已存在！');window.location.href='/ReadAndShare/register'</script>");
		      return "redirect:register";
		  }
	   }
	      
      if (password1.equals(password2)) {
    	  
    	  // TODO: add into Table User
    	  String insertSql = "insert into user(account,password"
    	  + ") values('" + phoneNumber + "', '" + password1 + "')";
    	  Boolean result = dBConnection.insertSQL(insertSql);
    	  System.out.println("注册成功！");
          return "redirect:login";
      } else {
    	  System.out.println("两次输入的密码不一致！");
          return "redirect:register";
      }
      
   }
	
}
