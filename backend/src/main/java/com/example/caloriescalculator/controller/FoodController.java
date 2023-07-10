package com.example.caloriescalculator.controller;

import com.example.caloriescalculator.models.FoodModel;
import com.example.caloriescalculator.repositories.FoodRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("/api")
public class FoodController {
    @Autowired
    FoodRepository foodRepository;

    @GetMapping("/foods")
    public ResponseEntity<List<FoodModel>> getAllFoods(){
        return new ResponseEntity<>(foodRepository.findAll(), HttpStatus.OK);
    }
}
