package com.example.caloriescalculator.services;
import com.example.caloriescalculator.models.Food;
import com.example.caloriescalculator.payload.FoodDTO;
import com.example.caloriescalculator.payload.FoodResponse;
import com.example.caloriescalculator.repositories.FoodRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class FoodServiceImpl implements FoodService {
    private final FoodRepository foodRepository;

    @Autowired
    public FoodServiceImpl(FoodRepository foodRepository) {
        this.foodRepository = foodRepository;
    }

    public FoodResponse getAllFoods(int page, int size, String sortBy, String sortDir) {


        Sort sort = sortDir.equalsIgnoreCase(Sort.Direction.ASC.name()) ? Sort.by(sortBy).ascending()
                : Sort.by(sortBy).descending();

        // create Pageable instance
        Pageable pageable = PageRequest.of(page, size, sort);

        Page<Food> foodPage = foodRepository.findAll(pageable);
        List<Food> listOfFoods = foodPage.getContent();

        List<FoodDTO> content = listOfFoods.stream().map(this::mapToDTO).collect(Collectors.toList());

        FoodResponse foodResponse = new FoodResponse();
        foodResponse.setContent(content);
        foodResponse.setTotalPages(foodPage.getTotalPages());
        foodResponse.setTotalElements(foodPage.getTotalElements());
        foodResponse.setLast(foodPage.isLast());
        foodResponse.setPageNumber(foodPage.getNumber());
        foodResponse.setPageSize(foodPage.getSize());

        return foodResponse;
    }

    private FoodDTO mapToDTO(Food food) {
        FoodDTO foodDTO = new FoodDTO();
        foodDTO.setFoodId(food.getFoodId());
        foodDTO.setDisplayName(food.getDisplayName());
        foodDTO.setPortionDefault(food.getPortionDefault());
        foodDTO.setPortionAmount(food.getPortionAmount());
        foodDTO.setCalories(food.getCalories());

        return foodDTO;
    }

    public Food getFoodById(Integer id) {
        return foodRepository.findById(id).orElse(null);
    }

    public Food createFood(Food food) {
        return foodRepository.save(food);
    }

    public Food updateFood(Integer id, Food food) {
        Food existingFood = foodRepository.findById(id).orElse(null);
        if (existingFood != null) {
            food.setFoodId(existingFood.getFoodId());
            return foodRepository.save(food);
        }
        return null;
    }

    public boolean deleteFood(Integer id) {
        if (foodRepository.existsById(id)) {
            foodRepository.deleteById(id);
            return true;
        }
        return false;
    }
}

