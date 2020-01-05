package com.kgitbank.mvc04;

import java.io.IOException;


import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class JSoupTest {
	
	public static void main(String[] args) throws IOException {
		Document doc = Jsoup.connect("https://music.naver.com/listen/top100.nhn?domain=DOMESTIC_V2").get(); //url 입력하고 밑에 select로 찾아내면 됨.
		//System.out.println(doc);
		Elements list = doc.select(".ellipsis"); // .class
		for (Element e : list) {
			//System.out.println(e);
			System.out.println(e.text()); // 크롤링
		}
	}
	
}
