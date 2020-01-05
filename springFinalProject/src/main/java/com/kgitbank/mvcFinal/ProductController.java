package com.kgitbank.mvcFinal;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
	
	@Autowired
	ProductDAO dao;
	
	@RequestMapping("product")
	public void list(Model model) {
		List<ProductDTO> list = dao.list();
		model.addAttribute("list", list);
	}
	
	@RequestMapping("one")
	public void one(Model model, ProductDTO productDTO) {
		ProductDTO dto = dao.select(productDTO);
		model.addAttribute("dto", dto);
	}
	
	@RequestMapping("basket")
	public void basket(ProductDTO productDTO, HttpSession session) {
		
		//세션을 이용한 장바구니 처리
		//1.장바구니가 이미 만들어져 있는지 확인(장바구니 세션이 만들어져 있는지 확인)
		ArrayList<ProductDTO> list = (ArrayList<ProductDTO>)session.getAttribute("basket");
		if(list != null) {
			list.add(productDTO);
		}else {
			list = new ArrayList<ProductDTO>();
			list.add(productDTO);
		}
		session.setAttribute("basket", list);
		System.out.println("=======장바구니(개수: " + list.size() + ")======");
		System.out.println(list);
		//2.장바구니가 이미 있는 경우
		//	2-1.목록을 가지고와서 
		//	2-2.목록에 내 dto를 추가
		//	2-3.dto가 추가된 목록을 다시 세션으로 지정
		//3.장바구니가 없는 경우
		//	3-1.list를 만들어서
		//	3-2.그 list를 세션으로 지정
		int sum = 0;
		//4.장바구니의 현재까지의 총 금액을 오른쪽 top2.jsp에 넣어주기 위해서는
		// 총금액을 구해서 session의 속성으로 set해주기
		for (int i=0; i<list.size(); i++) {
			ProductDTO dto = list.get(i);
			sum= sum + Integer.parseInt(dto.getPrice());
		}
		session.setAttribute("total", sum);
		session.setAttribute("count", list.size());
	}
	
}
