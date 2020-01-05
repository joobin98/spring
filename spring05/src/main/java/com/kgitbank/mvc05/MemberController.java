package com.kgitbank.mvc05;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@Autowired
	MemberDAO dao;
	
	@RequestMapping("memberInsert")
	public void insert(MemberDTO memberDTO) {
		
		dao.insert(memberDTO);
	}
	
	@RequestMapping("memberDelete")
	public void delete(MemberDTO memberDTO) {
		dao.delete(memberDTO);
	}
}
