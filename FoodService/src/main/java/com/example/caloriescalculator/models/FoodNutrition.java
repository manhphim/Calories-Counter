package com.example.caloriescalculator.models;

import jakarta.persistence.*;

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

    // Constructors, getters, and setters

    public FoodNutrition() {
    }

    public FoodNutrition(Integer foodId, Integer foodCode, Double grains, Double wholeGrains, Double vegetables,
                         Double orangeVegetables, Double drkgreenVegetables, Double starchyVegetables,
                         Double otherVegetables, Double fruits, Double milk, Double meats, Double soy,
                         Double drybeansPeas, Double oils, Double solidFats, Double addedSugars, Double alcohol) {
        this.foodId = foodId;
        this.foodCode = foodCode;
        this.grains = grains;
        this.wholeGrains = wholeGrains;
        this.vegetables = vegetables;
        this.orangeVegetables = orangeVegetables;
        this.drkgreenVegetables = drkgreenVegetables;
        this.starchyVegetables = starchyVegetables;
        this.otherVegetables = otherVegetables;
        this.fruits = fruits;
        this.milk = milk;
        this.meats = meats;
        this.soy = soy;
        this.drybeansPeas = drybeansPeas;
        this.oils = oils;
        this.solidFats = solidFats;
        this.addedSugars = addedSugars;
        this.alcohol = alcohol;
    }

    // Getters and Setters

    public Integer getFoodNutritionId() {
        return foodNutritionId;
    }

    public void setFoodNutritionId(Integer foodNutritionId) {
        this.foodNutritionId = foodNutritionId;
    }

    public Integer getFoodId() {
        return foodId;
    }

    public void setFoodId(Integer foodId) {
        this.foodId = foodId;
    }

    public Integer getFoodCode() {
        return foodCode;
    }

    public void setFoodCode(Integer foodCode) {
        this.foodCode = foodCode;
    }

    public Double getGrains() {
        return grains;
    }

    public void setGrains(Double grains) {
        this.grains = grains;
    }

    public Double getWholeGrains() {
        return wholeGrains;
    }

    public void setWholeGrains(Double wholeGrains) {
        this.wholeGrains = wholeGrains;
    }

    public Double getVegetables() {
        return vegetables;
    }

    public void setVegetables(Double vegetables) {
        this.vegetables = vegetables;
    }

    public Double getOrangeVegetables() {
        return orangeVegetables;
    }

    public void setOrangeVegetables(Double orangeVegetables) {
        this.orangeVegetables = orangeVegetables;
    }

    public Double getDrkgreenVegetables() {
        return drkgreenVegetables;
    }

    public void setDrkgreenVegetables(Double drkgreenVegetables) {
        this.drkgreenVegetables = drkgreenVegetables;
    }

    public Double getStarchyVegetables() {
        return starchyVegetables;
    }

    public void setStarchyVegetables(Double starchyVegetables) {
        this.starchyVegetables = starchyVegetables;
    }

    public Double getOtherVegetables() {
        return otherVegetables;
    }

    public void setOtherVegetables(Double otherVegetables) {
        this.otherVegetables = otherVegetables;
    }

    public Double getFruits() {
        return fruits;
    }

    public void setFruits(Double fruits) {
        this.fruits = fruits;
    }

    public Double getMilk() {
        return milk;
    }

    public void setMilk(Double milk) {
        this.milk = milk;
    }

    public Double getMeats() {
        return meats;
    }

    public void setMeats(Double meats) {
        this.meats = meats;
    }

    public Double getSoy() {
        return soy;
    }

    public void setSoy(Double soy) {
        this.soy = soy;
    }

    public Double getDrybeansPeas() {
        return drybeansPeas;
    }

    public void setDrybeansPeas(Double drybeansPeas) {
        this.drybeansPeas = drybeansPeas;
    }

    public Double getOils() {
        return oils;
    }

    public void setOils(Double oils) {
        this.oils = oils;
    }

    public Double getSolidFats() {
        return solidFats;
    }

    public void setSolidFats(Double solidFats) {
        this.solidFats = solidFats;
    }

    public Double getAddedSugars() {
        return addedSugars;
    }

    public void setAddedSugars(Double addedSugars) {
        this.addedSugars = addedSugars;
    }

    public Double getAlcohol() {
        return alcohol;
    }

    public void setAlcohol(Double alcohol) {
        this.alcohol = alcohol;
    }
}

