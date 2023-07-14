package com.example.FoodWithCondimentService.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.FoodWithCondimentService.models.CondimentModel;
import com.example.FoodWithCondimentService.models.CondimentNutritionModel;
import com.example.FoodWithCondimentService.repositories.CondimentNutritionRepository;

@Service
public class CondimentNutritionService {
    private final CondimentNutritionRepository condimentNutritionRepository;

    @Autowired
    public CondimentNutritionService(CondimentNutritionRepository repository) {
        this.condimentNutritionRepository = repository;
    }
    public CondimentNutritionModel getCondimentNutritionWithCode(Integer code) {
        return this.condimentNutritionRepository.findByCondimentNutritionId(code);
    }

}
