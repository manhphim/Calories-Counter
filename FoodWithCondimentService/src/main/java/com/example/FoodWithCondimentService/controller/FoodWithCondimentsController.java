package com.example.FoodWithCondimentService.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.FoodWithCondimentService.Constants;
import com.example.FoodWithCondimentService.payload.FoodWithCondimentsResponse;
import com.example.FoodWithCondimentService.services.FoodWithCondimentsServiceImpl;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("/api/v1/foodsWCondiments")
public class FoodWithCondimentsController {
    @Autowired
    private final FoodWithCondimentsServiceImpl foodWithCondimentsService;

    @Autowired
    public FoodWithCondimentsController(FoodWithCondimentsServiceImpl foodWithCondimentsService) {
        this.foodWithCondimentsService = foodWithCondimentsService;
    }

    @GetMapping
    public ResponseEntity<FoodWithCondimentsResponse> getAllFoods(
            @RequestParam(value = "page", defaultValue = Constants.DEFAULT_PAGE_NUMBER) int page,
            @RequestParam(value = "size", defaultValue = Constants.DEFAULT_PAGE_SIZE) int size,
            @RequestParam(value = "sortBy", defaultValue = Constants.DEFAULT_SORT_BY) String sort,
            @RequestParam(value = "sortDir", defaultValue = Constants.DEFAULT_SORT_DIRECTION) String direction) {
        FoodWithCondimentsResponse foods = foodWithCondimentsService.getAllFoodsWithCondiments(page, size, sort,
                direction);
        return new ResponseEntity<>(foods, HttpStatus.OK);
    }
}
