package com.example.caloriescalculator.repositories;

import com.example.caloriescalculator.models.Food;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface FoodRepository  extends JpaRepository<Food, Integer> {

}
