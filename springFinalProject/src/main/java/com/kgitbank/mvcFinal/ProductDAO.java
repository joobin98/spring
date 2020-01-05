package com.kgitbank.mvcFinal;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO implements ProductInter {

	@Autowired
	SqlSessionTemplate my;
	//dependency injection(의존성 주입, di) >> 싱글톤으로 만들어 놓은 것을 주입하는 것.
	//Inversion of Control(제어의 역행, IoC)
	
	@Override
	public List<ProductDTO> list() {
		return my.selectList("product.list");
	}

	@Override
	public ProductDTO select(ProductDTO productDTO) {
		System.out.println(productDTO);
		return my.selectOne("product.one", productDTO);
	}

	@Override
	public void buy(ProductDTO productDTO) {
		

	}

	@Override
	public void basket(ProductDTO productDTO) {
		

	}

}
