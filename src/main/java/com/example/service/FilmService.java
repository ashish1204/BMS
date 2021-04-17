package com.example.service;

import java.util.List;

import com.example.model.Film;

public interface FilmService {

	public List<Film> addFilm(Film film);
	public List<Film>  removeFilm(Long filmId);
	public List<Film> getFilms();
}
