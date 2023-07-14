package com.example.FoodWithCondimentService.repositories;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.FoodWithCondimentService.models.CondimentNutritionModel;

public interface CondimentNutritionRepository extends JpaRepository<CondimentNutritionModel, Integer> {
    	CondimentNutritionModel findByCondimentNutritionId(Integer code);
}
