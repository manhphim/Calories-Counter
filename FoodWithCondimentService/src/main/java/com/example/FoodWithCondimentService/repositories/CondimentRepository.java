package com.example.FoodWithCondimentService.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.FoodWithCondimentService.models.CondimentModel;

public interface CondimentRepository  extends JpaRepository<CondimentModel, Integer> {
    	List<CondimentModel> findByCondimentCode(String code);
}
