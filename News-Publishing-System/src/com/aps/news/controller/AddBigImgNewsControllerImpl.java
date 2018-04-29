package com.aps.news.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("addnews/bigImg")
public class AddBigImgNewsControllerImpl {
	
	
	@RequestMapping(value="sendNews",method=RequestMethod.POST)
	private String sendBigImg(){
		
		
		return "redirect:/backstage/news/checking/lis";
		
	}

}
