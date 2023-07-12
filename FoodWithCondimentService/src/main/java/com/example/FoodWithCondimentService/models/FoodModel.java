package com.example.FoodWithCondimentService.models;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "employees")
public class FoodModel {

    @Id
    @Column(name = "foodCode")
    String foodCode;


    public FoodModel(){

    }
}

