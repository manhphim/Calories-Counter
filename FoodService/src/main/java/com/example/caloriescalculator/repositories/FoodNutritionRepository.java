package com.example.caloriescalculator.repositories;

import com.example.caloriescalculator.models.FoodNutrition;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FoodNutritionRepository extends JpaRepository<FoodNutrition, Integer> {

}

