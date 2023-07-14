package com.example.FoodWithCondimentService.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@NoArgsConstructor
@Getter
@Table(name = "condiment")
public class CondimentModel {
    
    @Id
    @Column(name = "condiment_id")
    private Integer condimentId;

    @Column(name = "condiment_code")
    private String condimentCode;

    @Column(name = "display_name")
    private String displayName;

    @Column(name = "condiment_portion_size")
    private String condimentPortionSize;

    @Column(name = "condiment_portion_code")
    private Integer condimentPortionCode;

    @Column(name = "condiment_calories")
    private Double condimentCalories;

    @Column(name = "condiment_nutrition_id")
    private Integer condimentNutritionId;
}
