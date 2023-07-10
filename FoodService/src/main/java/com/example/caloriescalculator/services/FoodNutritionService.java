package com.example.caloriescalculator.services;

import com.example.caloriescalculator.models.FoodNutrition;
import com.example.caloriescalculator.repositories.FoodNutritionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FoodNutritionService {

    private final FoodNutritionRepository foodNutritionRepository;

    @Autowired
    public FoodNutritionService(FoodNutritionRepository foodNutritionRepository) {
        this.foodNutritionRepository = foodNutritionRepository;
    }

    public List<FoodNutrition> getAllFoodNutrition() {
        return foodNutritionRepository.findAll();
    }

    public FoodNutrition getFoodNutritionById(Integer id) {
        return foodNutritionRepository.findById(id).orElse(null);
    }

    public FoodNutrition createFoodNutrition(FoodNutrition foodNutrition) {
        return foodNutritionRepository.save(foodNutrition);
    }

    public FoodNutrition updateFoodNutrition(Integer id, FoodNutrition foodNutrition) {
        FoodNutrition existingFoodNutrition = foodNutritionRepository.findById(id).orElse(null);
        if (existingFoodNutrition != null) {
            foodNutrition.setFoodNutritionId(existingFoodNutrition.getFoodNutritionId());
            return foodNutritionRepository.save(foodNutrition);
        }
        return null;
    }

    public boolean deleteFoodNutrition(Integer id) {
        if (foodNutritionRepository.existsById(id)) {
            foodNutritionRepository.deleteById(id);
            return true;
        }
        return false;
    }
}
