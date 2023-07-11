package com.example.caloriescalculator.services;

import com.example.caloriescalculator.models.FoodNutrition;

import java.util.List;

public interface FoodNutritionService {
    List<FoodNutrition> getAllFoodNutrition();

    FoodNutrition getFoodNutritionById(Integer id);

    FoodNutrition createFoodNutrition(FoodNutrition foodNutrition);

    FoodNutrition updateFoodNutrition(Integer id, FoodNutrition foodNutrition);

    boolean deleteFoodNutrition(Integer id);
}
