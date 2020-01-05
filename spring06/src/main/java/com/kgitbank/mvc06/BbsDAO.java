package com.kgitbank.mvc06;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BbsDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public List<BbsDTO> list() {
		List<BbsDTO> list = my.selectList("bbs.list");
		return list;
	}
	
	public BbsDTO one(BbsDTO bbsDTO) {
		BbsDTO dto = my.selectOne("bbs.one", bbsDTO);
		return dto;
	}

	public void delete(BbsDTO bbsDTO) {
		my.delete("bbs.delete", bbsDTO);
	}
	
	public void update(BbsDTO bbsDTO) {
		my.update("bbs.update", bbsDTO);
	}

	public void insert2(BbsDTO bbsDTO) {
		my.insert("bbs.insert2", bbsDTO);
	}
}
