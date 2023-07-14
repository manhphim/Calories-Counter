package com.example.FoodWithCondimentService.services;

import com.example.FoodWithCondimentService.payload.FoodWithCondimentsResponse;

public interface FoodWithCondimentsService {
        FoodWithCondimentsResponse getAllFoodsWithCondiments(int page, int size, String sort, String sortDir);

}
