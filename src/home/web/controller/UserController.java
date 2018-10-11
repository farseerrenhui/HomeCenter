package home.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import home.web.bean.User;
import home.web.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value = "/login", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
	@ResponseBody
	public String login(
			Model model, HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value = "account") String account,
			@RequestParam(value = "pwd") String pwd) {

		User user = userService.Login(account, pwd);
				
		if (user != null) {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			return "成功";
		} else {
			return "失败";
		}
	}
}
