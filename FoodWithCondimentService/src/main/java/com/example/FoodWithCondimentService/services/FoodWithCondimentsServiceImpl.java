package com.example.FoodWithCondimentService.services;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.example.FoodWithCondimentService.models.FoodWithCondimentsModel;
import com.example.FoodWithCondimentService.payload.FoodWithCondimentsDTO;
import com.example.FoodWithCondimentService.payload.FoodWithCondimentsResponse;
import com.example.FoodWithCondimentService.repositories.FoodWithCondimentsRepository;

@Service
public class FoodWithCondimentsServiceImpl  implements FoodWithCondimentsService{
    private final FoodWithCondimentsRepository foodWithCondimentsRepository;

    @Autowired
    public FoodWithCondimentsServiceImpl(FoodWithCondimentsRepository repository) {
        this.foodWithCondimentsRepository = repository;
    }

    public FoodWithCondimentsResponse getAllFoodsWithCondiments(int page, int size, String sortBy, String sortDir) {

        Sort sort = sortDir.equalsIgnoreCase(Sort.Direction.ASC.name()) ? Sort.by(sortBy).ascending()
                : Sort.by(sortBy).descending();

        // create Pageable instance
        Pageable pageable = PageRequest.of(page, size, sort);

        Page<FoodWithCondimentsModel> foodPage = foodWithCondimentsRepository.findAll(pageable);
        List<FoodWithCondimentsModel> listOfFoods = foodPage.getContent();

        List<FoodWithCondimentsDTO> content = listOfFoods.stream().map(this::mapToDTO).collect(Collectors.toList());

        FoodWithCondimentsResponse foodResponse = new FoodWithCondimentsResponse();
        foodResponse.setContent(content);
        foodResponse.setTotalPages(foodPage.getTotalPages());
        foodResponse.setTotalElements(foodPage.getTotalElements());
        foodResponse.setLast(foodPage.isLast());
        foodResponse.setPageNumber(foodPage.getNumber());
        foodResponse.setPageSize(foodPage.getSize());

        return foodResponse;
    }

    private FoodWithCondimentsDTO mapToDTO(FoodWithCondimentsModel food) {
        FoodWithCondimentsDTO dto = new FoodWithCondimentsDTO();
        dto.setSurveyFoodCode(food.getSurveyFoodCode());
        dto.setDisplayName(food.getDisplayName());
        dto.setCond1Code(food.getCond1Code());
        dto.setCond1Name(food.getCond1Name());
        dto.setCond2Code(food.getCond2Code());
        dto.setCond2Name(food.getCond2Name());
        dto.setCond3Code(food.getCond3Code());
        dto.setCond3Name(food.getCond3Name());
        dto.setCond4Code(food.getCond4Code());
        dto.setCond4Name(food.getCond4Name());
        dto.setCond5Code(food.getCond5Code());
        dto.setCond5Name(food.getCond5Name());

        return dto;
    }



}
