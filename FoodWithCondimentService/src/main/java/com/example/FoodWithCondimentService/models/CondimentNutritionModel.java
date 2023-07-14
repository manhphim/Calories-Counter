package com.example.FoodWithCondimentService.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@NoArgsConstructor
@Getter
@Table(name = "condiment_nutrition")
public class CondimentNutritionModel {

    @Id
    @Column(name = "condiment_nutrition_id")
    private Integer condimentNutritionId;

    @Column(name = "condiment_code")
    private String condimentCode;

    @Column(name = "condiment_grains")
    private Double condimentGrains;

    @Column(name = "condiment_whole_grains")
    private Double condimentWholeGrains;

    @Column(name = "condiment_vegetables")
    private Double condimentVegetables;

    @Column(name = "condiment_dkgreen")
    private Double condimentDkgreen;

    @Column(name = "condiment_orange")
    private Double condimentOrange;

    @Column(name = "condiment_starchy_vegetables")
    private Double condimentStarchyVegetables;

    @Column(name = "condiment_other_vegetables")
    private Double condimentOtherVegetables;

    @Column(name = "condiment_fruits")
    private Double condimentFruits;

    @Column(name = "condiment_milk")
    private Double condimentMilk;

    @Column(name = "condiment_meat")
    private Double condimentMeat;

    @Column(name = "condiment_soy")
    private Double condimentSoy;

    @Column(name = "condiment_drybeans_peas")
    private Double condimentDryBeansPeas;

    @Column(name = "condiment_oils")
    private Double condimentOils;

    @Column(name = "condiment_solid_fats")
    private Double condimentSolidFats;

    @Column(name = "condiment_added_sugars")
    private Double condimentAddedSugars;

    @Column(name = "condiment_alcohol")
    private Double condimentAlcohol;

    @Column(name = "condiment_saturated_fats")
    private Double condimentSaturatedFats;

}
