package com.example.FoodWithCondimentService.payload;

import lombok.Data;

@Data
public class FoodWithCondimentsDTO {
    private String surveyFoodCode;
    private String displayName;
    private Integer cond1Code;
    private String cond1Name;
    private Integer cond2Code;
    private String cond2Name;
    private Integer cond3Code;
    private String cond3Name;
    private Integer cond4Code;
    private String cond4Name;
    private Integer cond5Code;
    private String cond5Name;
}
