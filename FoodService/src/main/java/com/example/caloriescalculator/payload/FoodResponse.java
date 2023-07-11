package com.example.caloriescalculator.payload;

import com.example.caloriescalculator.models.Food;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class FoodResponse {
    private List<FoodDTO> content;
    private int totalPages;
    private long totalElements;
    private boolean last;
    private int pageNumber;
    private int pageSize;
}
