package com.example.FoodWithCondimentService.services;

import java.util.List;

import com.example.FoodWithCondimentService.models.CondimentModel;

public interface CondimentService {
    List<CondimentModel> getCondimentsWithCode(Integer code);
}
