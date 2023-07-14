package com.example.FoodWithCondimentService.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.FoodWithCondimentService.models.CondimentModel;
import com.example.FoodWithCondimentService.models.CondimentNutritionModel;
import com.example.FoodWithCondimentService.repositories.CondimentRepository;

@Service
public class CondimentServiceImpl implements CondimentService {
    private final CondimentRepository condimentRepository;

    @Autowired
    public CondimentServiceImpl(CondimentRepository repository) {
        this.condimentRepository = repository;
    }

    public List<CondimentModel> getCondimentsWithCode(Integer code) {
        return this.condimentRepository.findByCondimentCode(code.toString());
    }
}
