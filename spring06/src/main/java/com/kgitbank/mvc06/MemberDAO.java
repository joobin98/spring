package com.kgitbank.mvc06;

import java.sql.Connection;
import java.sql.DriverManager;


import java.sql.PreparedStatement;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {
	
	@Autowired
	SqlSessionTemplate my;
	
	public void insert(MemberDTO memberDTO) {
		my.insert("member.insert", memberDTO); //member.xml을 보면 member는 newspace에 해당하고 .insert는 id에 해당한다.
	}
	
	public void delete(MemberDTO memberDTO) {
		my.delete("member.delete", memberDTO);
	}
	
	public MemberDTO select(MemberDTO memberDTO) {
		MemberDTO dto = my.selectOne("member.select", memberDTO);
		return dto;
	}
	
	public List<MemberDTO> selectList() {
		List<MemberDTO> list = my.selectList("member.selectList");
		return list;
	}
}
