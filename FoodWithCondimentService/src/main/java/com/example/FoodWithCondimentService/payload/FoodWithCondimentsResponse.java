package com.example.FoodWithCondimentService.payload;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FoodWithCondimentsResponse {
    private List<FoodWithCondimentsDTO> content;
    private int totalPages;
    private long totalElements;
    private boolean last;
    private int pageNumber;
    private int pageSize;
}
