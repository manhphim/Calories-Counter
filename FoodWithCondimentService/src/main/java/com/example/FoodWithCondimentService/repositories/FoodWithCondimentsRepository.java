package com.example.FoodWithCondimentService.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.FoodWithCondimentService.models.FoodWithCondimentsModel;

public interface FoodWithCondimentsRepository extends JpaRepository<FoodWithCondimentsModel, Integer>  {
    
}
