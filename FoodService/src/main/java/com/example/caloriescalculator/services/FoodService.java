package com.example.caloriescalculator.services;

import com.example.caloriescalculator.models.Food;
import com.example.caloriescalculator.payload.FoodResponse;


public interface FoodService {
    FoodResponse getAllFoods(int page, int size, String sort, String sortDir);

    Food getFoodById(Integer foodId);

    Food createFood(Food food);

    Food updateFood(Integer foodId, Food food);

    boolean deleteFood(Integer foodId);
}
