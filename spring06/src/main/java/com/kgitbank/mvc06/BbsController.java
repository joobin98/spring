package com.kgitbank.mvc06;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BbsController {
	//dao 싱글톤으로 만들어진 것 주소값을 주입
	//dependency injection(DI)
	
	@Autowired
	BbsDAO dao;
	
	@RequestMapping("bbsList")
	public void list(Model model, HttpSession session) {
		session.setAttribute("id", "park");
		List<BbsDTO> list = dao.list();
		model.addAttribute("list", list);
	}
	
	@RequestMapping("bbsSelect")
	public void one(BbsDTO bbsDTO, Model model) {
		BbsDTO dto = dao.one(bbsDTO);
		model.addAttribute("dto", dto);
	}
	
	@RequestMapping("bbsDelete")
	public String delete(BbsDTO bbsDTO) {
		dao.delete(bbsDTO);
		return "redirect:bbsList"; //브라우저에게 명령하는 코드
	}
	
	@RequestMapping("bbsUpdate")
	public void update(BbsDTO bbsDTO, Model model) {
		//기존의 값을 확인해보고, 수정할 것이 있으면 수정
		//검색이 들어가야함.
		BbsDTO dto = dao.one(bbsDTO);
		model.addAttribute("dto", dto);
	}
	
	@RequestMapping("bbsUpdate2")
	public void update2(BbsDTO bbsDTO) {
		dao.update(bbsDTO);
	}
	
	@RequestMapping("insert2")
	public String insert2(BbsDTO bbsDTO) {
		dao.insert2(bbsDTO);
		return "redirect:bbsList";
	}
}
