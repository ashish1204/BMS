package com.example.repo;

import javax.transaction.Transactional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.model.Film;

@Repository
public interface FilmRepo extends CrudRepository<Film, String> {

	@Transactional
	public void deleteByFilmId(Long filmId);
}
