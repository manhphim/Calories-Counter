package com.example.caloriescalculator.services;
import com.example.caloriescalculator.models.Food;
import com.example.caloriescalculator.repositories.FoodRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FoodService {
    private final FoodRepository foodRepository;

    @Autowired
    public FoodService(FoodRepository foodRepository) {
        this.foodRepository = foodRepository;
    }

    public List<Food> getAllFoods() {
        return foodRepository.findAll();
    }

    public Food getFoodById(Integer id) {
        return foodRepository.findById(id).orElse(null);
    }

    public Food createFood(Food food) {
        return foodRepository.save(food);
    }

    public Food updateFood(Integer id, Food food) {
        Food existingFood = foodRepository.findById(id).orElse(null);
        if (existingFood != null) {
            food.setFoodId(existingFood.getFoodId());
            return foodRepository.save(food);
        }
        return null;
    }

    public boolean deleteFood(Integer id) {
        if (foodRepository.existsById(id)) {
            foodRepository.deleteById(id);
            return true;
        }
        return false;
    }
}

