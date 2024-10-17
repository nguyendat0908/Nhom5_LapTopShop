package com.example.nhom5WebApp_LapTopShop.domain.DTO;

import java.util.List;
import java.util.Optional;

public class ProductSpecDTO {
    
    private Optional<String> page;
    private Optional<List<String>> factory;
    private Optional<List<String>> target;
    private Optional<String> sort;
    private Optional<List<String>> price;
    
    public Optional<String> getPage() {
        return page;
    }
    public void setPage(Optional<String> page) {
        this.page = page;
    }
    public Optional<List<String>> getFactory() {
        return factory;
    }
    public void setFactory(Optional<List<String>> factory) {
        this.factory = factory;
    }
    public Optional<List<String>> getTarget() {
        return target;
    }
    public void setTarget(Optional<List<String>> target) {
        this.target = target;
    }
    public Optional<String> getSort() {
        return sort;
    }
    public void setSort(Optional<String> sort) {
        this.sort = sort;
    }
    public Optional<List<String>> getPrice() {
        return price;
    }
    public void setPrice(Optional<List<String>> price) {
        this.price = price;
    }
}
