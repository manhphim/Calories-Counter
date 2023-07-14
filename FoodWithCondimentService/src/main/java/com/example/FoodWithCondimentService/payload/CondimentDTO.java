package com.example.FoodWithCondimentService.payload;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CondimentDTO {
        private Integer condimentId;
    private Integer condimentCode;
    private String displayName;
    private String condimentPortionSize;
    private Integer condimentPortionCode;
    private Double condimentCalories;
    private String condimentNutritionId;
}
