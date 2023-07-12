package com.example.caloriescalculator.models;

import jakarta.persistence.*;
import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString

@Entity
@Table(name = "food_nutrition")
public class FoodNutrition {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "food_nutrition_id")
    private Integer foodNutritionId;

    @Column(name = "food_id")
    private Integer foodId;

    @Column(name = "food_code")
    private Integer foodCode;

    @Column(name = "grains")
    private Double grains;

    @Column(name = "whole_grains")
    private Double wholeGrains;

    @Column(name = "vegetables")
    private Double vegetables;

    @Column(name = "orange_vegetables")
    private Double orangeVegetables;

    @Column(name = "drkgreen_vegetables")
    private Double drkgreenVegetables;

    @Column(name = "starchy_vegetables")
    private Double starchyVegetables;

    @Column(name = "other_vegetables")
    private Double otherVegetables;

    @Column(name = "fruits")
    private Double fruits;

    @Column(name = "milk")
    private Double milk;

    @Column(name = "meats")
    private Double meats;

    @Column(name = "soy")
    private Double soy;

    @Column(name = "drybeans_peas")
    private Double drybeansPeas;

    @Column(name = "oils")
    private Double oils;

    @Column(name = "solid_fats")
    private Double solidFats;

    @Column(name = "added_sugars")
    private Double addedSugars;

    @Column(name = "alcohol")
    private Double alcohol;

}