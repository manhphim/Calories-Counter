package com.example.FoodWithCondimentService.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.FoodWithCondimentService.models.CondimentModel;
import com.example.FoodWithCondimentService.services.CondimentServiceImpl;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("/api/v1/condiments")
public class CondimentsController {
    @Autowired
    private final CondimentServiceImpl condimentService;

    @Autowired
    public CondimentsController(CondimentServiceImpl condimentService) {
        this.condimentService = condimentService;
    }

    @GetMapping("/{condimentCode}")
    public ResponseEntity<List<CondimentModel>> getCondimentByCode(@PathVariable("condimentCode") Integer condimentCode) {
        List<CondimentModel> reponse = condimentService.getCondimentsWithCode(condimentCode);
        if (reponse != null) {
            return new ResponseEntity<>(reponse, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
}
