package com.example.FoodWithCondimentService.repositories;

import com.example.caloriescalculator.models.FoodModel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FoodRepository  extends JpaRepository<FoodModel, Long> {
    FoodModel findByFoodCode(String foodCode);
}
