package com.start4321.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.start4321.web.model.write;
import com.start4321.web.mybatis.BoardManager;

@Controller
public class BoardController {

		@RequestMapping(value = "/write_form", method = RequestMethod.GET)
		public String Board_write(){
						
			return "write_form";
		}
		
		@RequestMapping(value = "/writing_view", method = RequestMethod.GET)
		public String writing_view(){
			
			return "writing_view";
		}
		
		@RequestMapping(value = "/list", method = RequestMethod.GET)
		public ModelAndView Board_list(){

			ModelAndView mv = new ModelAndView("list");
			mv.addObject("list", BoardManager.list_search());
			return mv;
		}
		
		@RequestMapping(value = "/write_form", method = RequestMethod.POST)
			public String write_insert(write write){
				BoardManager.write_insert(write);
				return "home";
			}
			
		
		
		
	
}
