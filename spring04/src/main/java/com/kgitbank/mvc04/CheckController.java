package com.kgitbank.mvc04;

import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CheckController {
	
	@RequestMapping("money")
	public void money(String money, String level, Model model) {
		String result = "";
		int money2 = Integer.parseInt(money);
		double money3 = 0;
		if(level.equals("1")) {
			money3 = money2 * 0.7;
		}else if(level.equals("2")) {
			money3 = money2 * 0.8;
		}else if(level.equals("3")) {
			money3 = money2 * 0.9;
		}else{
			money3 = money2;
		}
		result = "당신의 지불 금액은 " + (int)money3 + "원입니다.";
		model.addAttribute("result5", result);
		
	}
	@RequestMapping("tel2")
	public void tel2(String tel2, Model model) {
		String result = "";
		String temp = tel2.substring(0,3);
		if(temp.equals("010")) {
			result = "1111";
		}else if(temp.equals("011")) {
			result = "2222";
		}else if(temp.equals("018")) {
			result = "3333";
		}else{
			result = "4444";
		}
		
		model.addAttribute("result4", result);
		
	}
	
	@RequestMapping("tel")
	public void tel(String tel, Model model) {
		String result = "";
		Random r = new Random();
		int num = r.nextInt(1000);
		result = String.valueOf(num);
		model.addAttribute("result3", result);
		
	}
	
	
	@RequestMapping("admin")
	public void admin(String admin, Model model) { 
		String result;
		
		if(admin.equals("admin")){
			result = "관리자모드로 로그인되었습니다.";
		}else{
			result = "관리자 모드로 로그인 할 수 없습니다.";
		}
		model.addAttribute("result2", result);
	}
	
	@RequestMapping("member")
	public void id(String id, Model model) { // 한번쓰면 자동으로 죽는 model을 사용 >> 자동으로 생성해줌
		String[] list = {"root", "admin", "manager"};
		String result = "사용할 수 있는 아이디입니다.";
		for(int i=0; i<3; i++){
			if(id.equals(list[i])){
				result = "아이디가 이미 사용중입니다.";
			}
		}
		model.addAttribute("result1", result);
	}
	
	

}
