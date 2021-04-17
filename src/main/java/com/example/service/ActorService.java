package com.example.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.model.Actor;

@Service		
public interface ActorService {

	
	public List<Actor> getActors();
	public List<Actor> addActor(Actor actor);
}
