package com.ooad.springmvc;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import util.DBConnection;
import util.IDBConnection;
import util.LoginStatus;

@Controller
public class BookShelfController {
	
		private LoginStatus loginStatus = LoginStatus.getInstance();
		private IDBConnection dBConnection = DBConnection.getInstance();
		
	   @RequestMapping(value = "/bookShelf", method = RequestMethod.GET)
	   public String showPage(ModelMap model, @RequestParam("phoneNumber") String phoneNumber) {
		   if (loginStatus.isLogin()) {
			   System.out.println(phoneNumber);
			   model.addAttribute("phoneNumber", loginStatus.getUserPhoneNumber());
			   return "bookShelf";
		   }
		   else							return "login";
	   }
	   @RequestMapping(value = "/friendsBookshelf", method = RequestMethod.GET)
	   public String showFriendPage(ModelMap model, @RequestParam("id") String name) {
		   					return "friendsBookshelf";
	   }
	   @RequestMapping(value = "/selectBookList", method = RequestMethod.GET)
	   public String selectBookList(ModelMap model,@RequestParam("account") String account) throws SQLException {

		   // TODO: update tags
//		   DBConnection.connSQL();
		   String selectSql = "select * from booklist where user_account='"+account+"'";
		   ResultSet resultSet = dBConnection.selectSQL(selectSql);
		   while(resultSet.next())
		   {
			  System.out.println("selecting"+resultSet.getString("name"));
		   }
//		   DBConnection.deconnSQL();
		   return "redirect:home";
		   
	   }
	   @RequestMapping(value = "/insertbooklist", method = RequestMethod.GET)
	   public String insertBooklist(ModelMap model,@RequestParam("name") String name,
			   @RequestParam("account") String account) {

		   // TODO: update tags
//		   DBConnection.connSQL();
		   String insertSql = "insert into booklist(name,user_account) values('"+name+"','"
		   +account+"')";
		   		
		   Boolean resultSet = dBConnection.insertSQL(insertSql);
		   System.out.println("insert"+resultSet);
		   
//		   DBConnection.deconnSQL();
		   return "redirect:home";
		   
	   }
	   @RequestMapping(value = "/insertbooktolist", method = RequestMethod.GET)
	   public String insertBookToList(ModelMap model,@RequestParam("isbn") String isbn,
			   @RequestParam("listname") String listname,@RequestParam("account") String account) throws SQLException {

		   // TODO: update tags
//		   DBConnection.connSQL();
		   String selectSql="select id from booklist where name='"+listname
				   +"'and user_account='"+account+"'";
		   ResultSet idSet=dBConnection.selectSQL(selectSql);
		   if(!idSet.next())
		   {
			   System.out.println("鎵句笉鍒版暟鎹�");
			   return "redirect:home";
		   }
		   Integer id=idSet.getInt("id");
		   String insertSql = "insert into book_booklist(book_isbn,booklist_id) values('"+isbn+"','"
		   +id+"')";
		   		
		   Boolean resultSet = dBConnection.insertSQL(insertSql);
		   System.out.println("insert"+resultSet);
		   
//		   DBConnection.deconnSQL();
		   return "redirect:home";
		   
	   }
	   @RequestMapping(value="/deletebooklist",method = RequestMethod.GET)
	   public String deleteBooklist(ModelMap model,@RequestParam("name") String listname,
			   @RequestParam("account") String account) {

		   // TODO: update tags
//		   DBConnection.connSQL();
		   String insertSql = "delete A.* B.* from booklist A,book_booklist B"
		   		+ " where A.name='"+listname+"'and A.user_account='"+account+"' and A.id=B.id";
		   		
		   Boolean resultSet=dBConnection.deleteSQL(insertSql);
		   System.out.println("updating"+resultSet);
		   
//		   DBConnection.deconnSQL();
		   return "redirect:home";
		   
	   }
	   
	   @RequestMapping(value="/deletebookfromlist",method = RequestMethod.GET)
	   public String deleteBookFromList(ModelMap model,@RequestParam("bookisbn") String bookisbn,
			   @RequestParam("listname") String listname,@RequestParam("account") String account) {

		   // TODO: update tags
//		   DBConnection.connSQL();
		   String insertSql = "delete * from book_booklist B"
		   		+ " where book-isbn='"+bookisbn+"'and account='"+account
		   		+"'and booklist_id=( select id from"
		   				+ "book where name='"+listname+"' )";
		   		
		   Boolean resultSet=dBConnection.deleteSQL(insertSql);
		   System.out.println("updating"+resultSet);
		   
//		   DBConnection.deconnSQL();
		   return "redirect:home";
	   }
	   
	   
}
