package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.model.Film;
import com.example.service.FilmService;

@Controller
public class FilmController {
	@Autowired
	FilmService filmService;
	@RequestMapping("/")
	public String home() {
		System.out.println("homePage");
		return "home";
		
		//hgc j vhjvh  s
		
	}


	@RequestMapping("/films")
	public ModelAndView getFilms() {
		System.out.println("getFilms");
		ModelAndView mv=new ModelAndView("film");
		mv.addObject("films",filmService.getFilms());
		return mv;
		
	}
	
	

	@RequestMapping("/goToAddFilm")
	public String goToAddFilm() {
		System.out.println("goToAddFilm");
		return "addFilm";
		
	}
	
	@RequestMapping("/addFilm")
	public ModelAndView addFilm(Film film) {
		
		System.out.println("Add film"+film);
		List<Film> list=filmService.addFilm(film);
		//System.out.println(list);
		ModelAndView mv=new ModelAndView("film");
		mv.addObject("films",list);
		return mv;
		
		
	}
	
	@RequestMapping("/removeFilm")
	public ModelAndView removeFilm(@RequestParam("filmId")Long filmId) {
		
		System.out.println("Remove Film"+filmId);
	
		//System.out.println(list);
		ModelAndView mv=new ModelAndView("film");
		mv.addObject("films",filmService.removeFilm(filmId));
		return mv;
		
	}
	
	
	
}
