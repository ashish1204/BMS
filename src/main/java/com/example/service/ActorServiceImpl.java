package com.example.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.model.Actor;
import com.example.repo.ActorRepo;

@Service
public class ActorServiceImpl implements ActorService{
	@Autowired
	ActorRepo actorRepo;
	@Override
	public List<Actor> getActors() {
		// TODO Auto-generated method stub
		return (List<Actor>) actorRepo.findAll();
	}
	@Override
	public List<Actor> addActor(Actor actor) {

		int flag=1;
		List<Actor> list=new  ArrayList<Actor>();
		Actor a=new Actor();
		a.setActorError("Could not save the actor");
		list.add(a);
		try{
			actorRepo.save(actor);
		}
		catch (Exception e) {
			flag=0;
		}
		if(flag==1) {
			return (List<Actor>) actorRepo.findAll();
		}
		else
		return list;
	}

}
