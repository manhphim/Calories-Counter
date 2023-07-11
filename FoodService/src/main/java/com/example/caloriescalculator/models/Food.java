package com.example.caloriescalculator.models;

import jakarta.persistence.*;
import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
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

}