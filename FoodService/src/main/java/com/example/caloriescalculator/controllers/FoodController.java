package com.example.caloriescalculator.controllers;

import com.example.caloriescalculator.models.Food;
import com.example.caloriescalculator.payload.FoodResponse;
import com.example.caloriescalculator.services.FoodServiceImpl;
import com.example.caloriescalculator.utils.Constants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("/api/v1/foods")
public class FoodController {

    @Autowired
    private final FoodServiceImpl foodServiceImpl;

    @Autowired
    public FoodController(FoodServiceImpl foodServiceImpl) {
        this.foodServiceImpl = foodServiceImpl;
    }

    @GetMapping
    public ResponseEntity<FoodResponse> getAllFoods(@RequestParam(value = "page", defaultValue = Constants.DEFAULT_PAGE_NUMBER) int page,
                                                  @RequestParam(value = "size", defaultValue = Constants.DEFAULT_PAGE_SIZE) int size,
                                                  @RequestParam(value = "sortBy", defaultValue = Constants.DEFAULT_SORT_BY) String sort,
                                                  @RequestParam(value = "sortDir", defaultValue = Constants.DEFAULT_SORT_DIRECTION) String direction) {
        FoodResponse foods = foodServiceImpl.getAllFoods(page, size, sort, direction);
        return new ResponseEntity<>(foods, HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Food> getFoodById(@PathVariable("id") Integer id) {
        Food food = foodServiceImpl.getFoodById(id);
        if (food != null) {
            return new ResponseEntity<>(food, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @PostMapping
    public ResponseEntity<Food> createFood(@RequestBody Food food) {
        Food createdFood = foodServiceImpl.createFood(food);
        return new ResponseEntity<>(createdFood, HttpStatus.CREATED);
    }

    @PutMapping("/{id}")
    public ResponseEntity<Food> updateFood(@PathVariable("id") Integer id, @RequestBody Food food) {
        Food updatedFood = foodServiceImpl.updateFood(id, food);
        if (updatedFood != null) {
            return new ResponseEntity<>(updatedFood, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteFood(@PathVariable("id") Integer id) {
        boolean deleted = foodServiceImpl.deleteFood(id);
        if (deleted) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
}
