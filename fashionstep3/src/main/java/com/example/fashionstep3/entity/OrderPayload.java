package com.example.fashionstep3.entity;


import lombok.Data;

@Data
public class OrderPayload {

    private Product product;
    private Customer customer;
}
