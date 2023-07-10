package com.example.caloriescalculator.models;

import jakarta.persistence.*;
@Entity
@Table(name = "food")
public class Food {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "food_id")
    private Integer foodId;

    @Column(name = "food_code")
    private Integer foodCode;

    @Column(name = "display_name")
    private String displayName;

    @Column(name = "portion_default")
    private Double portionDefault;

    @Column(name = "portion_amount")
    private Double portionAmount;

    @Column(name = "portion_display_name")
    private String portionDisplayName;

    @Column(name = "factor")
    private Double factor;

    @Column(name = "increment")
    private Double increment;

    @Column(name = "multiplier")
    private Double multiplier;

    @Column(name = "calories")
    private Double calories;

    @Column(name = "saturated_fats")
    private Double saturatedFats;

    @OneToOne
    @JoinColumn(name = "food_nutrition_id")
    private FoodNutrition foodNutrition;

    // Constructors, getters, and setters

    public Food() {
    }

    public Food(Integer foodCode, String displayName, Double portionDefault, Double portionAmount,
                String portionDisplayName, Double factor, Double increment, Double multiplier, Double calories,
                Double saturatedFats, FoodNutrition foodNutrition) {
        this.foodCode = foodCode;
        this.displayName = displayName;
        this.portionDefault = portionDefault;
        this.portionAmount = portionAmount;
        this.portionDisplayName = portionDisplayName;
        this.factor = factor;
        this.increment = increment;
        this.multiplier = multiplier;
        this.calories = calories;
        this.saturatedFats = saturatedFats;
        this.foodNutrition = foodNutrition;
    }

    // Getters and Setters

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

    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public Double getPortionDefault() {
        return portionDefault;
    }

    public void setPortionDefault(Double portionDefault) {
        this.portionDefault = portionDefault;
    }

    public Double getPortionAmount() {
        return portionAmount;
    }

    public void setPortionAmount(Double portionAmount) {
        this.portionAmount = portionAmount;
    }

    public String getPortionDisplayName() {
        return portionDisplayName;
    }

    public void setPortionDisplayName(String portionDisplayName) {
        this.portionDisplayName = portionDisplayName;
    }

    public Double getFactor() {
        return factor;
    }

    public void setFactor(Double factor) {
        this.factor = factor;
    }

    public Double getIncrement() {
        return increment;
    }

    public void setIncrement(Double increment) {
        this.increment = increment;
    }

    public Double getMultiplier() {
        return multiplier;
    }

    public void setMultiplier(Double multiplier) {
        this.multiplier = multiplier;
    }

    public Double getCalories() {
        return calories;
    }

    public void setCalories(Double calories) {
        this.calories = calories;
    }

    public Double getSaturatedFats() {
        return saturatedFats;
    }

    public void setSaturatedFats(Double saturatedFats) {
        this.saturatedFats = saturatedFats;
    }

    public FoodNutrition getFoodNutrition() {
        return foodNutrition;
    }

    public void setFoodNutrition(FoodNutrition foodNutrition) {
        this.foodNutrition = foodNutrition;
    }
}

