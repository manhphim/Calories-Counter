package com.example.caloriescalculator.payload;

import lombok.Data;

@Data
public class FoodDTO {
    private Integer foodId;
    private String displayName;
    private Double portionDefault;
    private Double portionAmount;
    private Double calories;
}
