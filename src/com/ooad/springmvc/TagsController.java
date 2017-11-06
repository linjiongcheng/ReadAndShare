package com.ooad.springmvc;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import util.DBConnection;
import util.IDBConnection;
import util.LoginStatus;

@Controller
public class TagsController {
	
	private IDBConnection dBConnection = DBConnection.getInstance();
	
	private LoginStatus loginStatus = LoginStatus.getInstance();
	
	   @RequestMapping(value = "/tags", method = RequestMethod.GET)
	   public String showPage(ModelMap model) {
		   
		   if (loginStatus.isLogin()) {
			   model.addAttribute("phoneNumber", loginStatus.getUserPhoneNumber());
			   return "tags"; 
		   }
		   else							return "redirect:login";
		   
	   }
	   
	   @RequestMapping(value = "/updateTags", method = RequestMethod.GET)
	   public String updateTags(ModelMap model) {


	   
		   String insertSql1 = "insert into tag(tag_type,tag_name) values('��ѧ','С˵')";
		   String insertSql2 = "insert into user_tag(user_account,tag_name) values('"+loginStatus.getUserPhoneNumber()+"','"+"С˵')";
		   String insertSql3 = "insert into tag(tag_type,tag_name) values('����','����')";
		   String insertSql4 = "insert into user_tag(user_account,tag_name) values('"+loginStatus.getUserPhoneNumber()+"','����')";
		   String insertSql5 = "insert into tag(tag_type,tag_name) values('�Ƽ�','������')";
		   String insertSql6 = "insert into user_tag(user_account,tag_name) values('"+loginStatus.getUserPhoneNumber()+"','"+"������')";
//		   DBConnection.connSQL();
//		   String insertSql = "insert into tag(tag_name"
//		   		+ ") values('madiao')";
//		   Boolean resultSet = DBConnection.insertSQL(insertSql);
//		   System.out.println("updating"+resultSet);
		   dBConnection.insertSQL(insertSql1);
		   dBConnection.insertSQL(insertSql2);
		   dBConnection.insertSQL(insertSql3);
		   dBConnection.insertSQL(insertSql4);
		   dBConnection.insertSQL(insertSql5);
		   dBConnection.insertSQL(insertSql6);
		   
		   return "redirect:home";
		   
	   }
	
}
