package com.example.caloriescalculator.models;

import jakarta.persistence.*;

@Entity
@Table(name = "employees")
public class FoodModel {

    @Id
    @Column(name = "foodCode")
    String foodCode;


    public FoodModel(){

    }
}

