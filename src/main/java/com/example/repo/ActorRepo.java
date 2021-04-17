package com.example.repo;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.model.Actor;

@Repository
public interface ActorRepo extends CrudRepository<Actor, Long> {

}
