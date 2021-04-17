package com.example.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class Film {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long filmId;
	private String name;
	private String genre;
	private String length;
	private String filmError;
	public Long getFilmId() {
		return filmId;
	}
	public String getFilmError() {
		return filmError;
	}
	public void setFilmError(String filmError) {
		this.filmError = filmError;
	}
	public void setFilmId(Long filmId) {
		this.filmId = filmId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getLength() {
		return length;
	}
	public void setLength(String length) {
		this.length = length;
	}
	@Override
	public String toString() {
		return "Film [filmId=" + filmId + ", name=" + name + ", genre=" + genre + ", length=" + length + ", filmError="
				+ filmError + "]";
	}
	
}
