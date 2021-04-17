package com.example.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.model.Film;
import com.example.repo.FilmRepo;
@Service
public class FilmServiceImpl implements FilmService{
	@Autowired
	FilmRepo filmRepo;
	@Override
	public List<Film> addFilm(Film film) {
		// TODO Auto-generated method stub
		int flag=1;
		List<Film> listError=new ArrayList<Film>();
		Film f=new Film();
		f.setFilmError("Film could not be added");
		listError.add(f);
		
		try {
			System.out.println("in try");
		System.out.println(filmRepo.save(film));
		}
		catch(Exception e) {
			System.out.println("in catch");

			flag=0;
		}
		if(flag==1)
		 return (List<Film>) filmRepo.findAll();
		else
			return listError;
		
	}

	@Override
	public List<Film> removeFilm(Long filmId) {
		// TODO Auto-generated method stub
		int flag=1;
		List<Film> listError=new ArrayList<Film>();
		Film f=new Film();
		f.setFilmError("Film could not be deleted");
		listError.add(f);
		
		try {
			System.out.println("in remove try");
			filmRepo.deleteByFilmId(filmId);
		}
		catch(Exception e) {
			System.out.println(e);
			System.out.println("in remove catch");

			flag=0;
		}
		if(flag==1)
		 return (List<Film>) filmRepo.findAll();
		else
			return listError;
	}

	@Override
	public List<Film> getFilms() {
		// TODO Auto-generated method stub
		return (List<Film>) filmRepo.findAll();
	}
}
