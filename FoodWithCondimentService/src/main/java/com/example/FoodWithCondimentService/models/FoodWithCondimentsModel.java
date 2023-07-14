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
@Table(name = "food_with_condiments")
public class FoodWithCondimentsModel {
    @Id
    @Column(name = "survey_food_code")
    private String surveyFoodCode;

    @Column(name = "display_name")
    private String displayName;

    @Column(name = "cond_1_code")
    private Integer cond1Code;

    @Column(name = "cond_1_name")
    private String cond1Name;

    @Column(name = "cond_2_code")
    private Integer cond2Code;

    @Column(name = "cond_2_name")
    private String cond2Name;

    @Column(name = "cond_3_code")
    private Integer cond3Code;

    @Column(name = "cond_3_name")
    private String cond3Name;

    @Column(name = "cond_4_code")
    private Integer cond4Code;

    @Column(name = "cond_4_name")
    private String cond4Name;

    @Column(name = "cond_5_code")
    private Integer cond5Code;

    @Column(name = "cond_5_name")
    private String cond5Name;
}
