package com.example.caloriescalculator.controllers;

import com.example.caloriescalculator.models.FoodNutrition;
import com.example.caloriescalculator.services.FoodNutritionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("/api/v1/food-nutrition")
public class FoodNutritionController {

    private final FoodNutritionService foodNutritionService;

    @Autowired
    public FoodNutritionController(FoodNutritionService foodNutritionService) {
        this.foodNutritionService = foodNutritionService;
    }

    @GetMapping
    public ResponseEntity<List<FoodNutrition>> getAllFoodNutrition() {
        List<FoodNutrition> foodNutritions = foodNutritionService.getAllFoodNutrition();
        return new ResponseEntity<>(foodNutritions, HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<FoodNutrition> getFoodNutritionById(@PathVariable("id") Integer id) {
        FoodNutrition foodNutrition = foodNutritionService.getFoodNutritionById(id);
        if (foodNutrition != null) {
            return new ResponseEntity<>(foodNutrition, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @PostMapping
    public ResponseEntity<FoodNutrition> createFoodNutrition(@RequestBody FoodNutrition foodNutrition) {
        FoodNutrition createdFoodNutrition = foodNutritionService.createFoodNutrition(foodNutrition);
        return new ResponseEntity<>(createdFoodNutrition, HttpStatus.CREATED);
    }

    @PutMapping("/{id}")
    public ResponseEntity<FoodNutrition> updateFoodNutrition(@PathVariable("id") Integer id,
                                                             @RequestBody FoodNutrition foodNutrition) {
        FoodNutrition updatedFoodNutrition = foodNutritionService.updateFoodNutrition(id, foodNutrition);
        if (updatedFoodNutrition != null) {
            return new ResponseEntity<>(updatedFoodNutrition, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteFoodNutrition(@PathVariable("id") Integer id) {
        boolean deleted = foodNutritionService.deleteFoodNutrition(id);
        if (deleted) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
}

