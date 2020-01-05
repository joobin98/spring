package com.kgitbank.mvc03;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginCheck {
	
	@RequestMapping("loginCheck")
	public String check(String id, String pw) {
		//db처리를 해주어야함.
		String dbId = "root";
		String dbPw = "1234";
		if(dbId.equals(id) && dbPw.equals(pw)) {
			return "ok";
		}else {
			return "not";
		}
	}
}
