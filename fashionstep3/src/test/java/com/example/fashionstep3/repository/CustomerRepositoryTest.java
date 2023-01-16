package com.example.fashionstep3.repository;

import com.example.fashionstep3.entity.Customer;
import com.example.fashionstep3.entity.Order;
import org.springframework.beans.factory.annotation.Autowired;

import static org.junit.jupiter.api.Assertions.*;

class CustomerRepositoryTest {

    @Autowired
    public void saveCustomerAndOrder(){

        Order order =
                Order.builder()
                        .orderQty(2)
                        .
                        .build();

        Customer customer =
                Customer.builder()

                        .build();
    }

}