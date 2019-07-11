package cn.edu.cuit.aumalls.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.cuit.aumalls.service.UserLoginService;

@Controller
public class LoginController {

	@Autowired
	private UserLoginService userLoginService;

	@RequestMapping("/tologin")
	public String tologin() {
		
		return "login";
	}
	
	@RequestMapping("/login")
	public String login(@RequestParam("username")String username,
			@RequestParam("password")String password, Model model) {
		
		boolean ref =  userLoginService.findUser(username,password);
		if(ref) {
			return "list";
		}
		else {
			model.addAttribute("loginErrorMsg", "用户名或密码有误");
			model.addAttribute("username",username);
			return "login";
		}
	}
}
