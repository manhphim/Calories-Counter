package com.example.FoodWithCondimentService.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.FoodWithCondimentService.models.CondimentNutritionModel;
import com.example.FoodWithCondimentService.services.CondimentNutritionService;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("/api/v1/condimentNutrition")
public class CondimentNutritionController {
    @Autowired
    private final CondimentNutritionService condimentNutritionService;

    @Autowired
    public CondimentNutritionController(CondimentNutritionService service) {
        this.condimentNutritionService = service;
    }

    @GetMapping("/{nutritionCode}")
    public ResponseEntity<CondimentNutritionModel> getCondimentNutritionByCode(
            @PathVariable("nutritionCode") Integer nutritionCode) {
        CondimentNutritionModel reponse = this.condimentNutritionService.getCondimentNutritionWithCode(nutritionCode);
        if (reponse != null) {
            return new ResponseEntity<>(reponse, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
}
