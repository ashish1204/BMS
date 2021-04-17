package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.model.Actor;
import com.example.service.ActorService;



@Controller
public class ActorControler {

	@Autowired
	ActorService actorService;
	
	
	@RequestMapping("/actors")
	public ModelAndView getActors(){
		System.out.println("get actors");
		ModelAndView mv=new ModelAndView("actor");
		mv.addObject("actors", actorService.getActors());
		return mv;
		
	}
	
	
	@RequestMapping("/goToAddActor")
	public String goToAddActor(){
		System.out.println("goToAddActor ");
		
		return "addActor";
		
	}
	
	
	@RequestMapping("/addActor")
	public ModelAndView addActor(Actor actor){
		ModelAndView mv=new ModelAndView("actor");
		System.out.println("addActor ");
		mv.addObject("actors",actorService.addActor(actor));
		return mv;
		
	}
}
