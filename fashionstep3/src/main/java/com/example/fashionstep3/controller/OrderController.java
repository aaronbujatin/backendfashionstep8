package com.example.fashionstep3.controller;

import com.example.fashionstep3.entity.Order;
import com.example.fashionstep3.entity.OrderPayload;
import com.example.fashionstep3.service.OrderService;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/api/v1/order")
@RequiredArgsConstructor
@Transactional
@CrossOrigin("*")
public class OrderController {

    public ResponseEntity<Order> saveOrder(@RequestBody Order order){

        return new ResponseEntity<>(HttpStatus.CREATED);
    }


    private final OrderService orderService;

    @PostMapping("/order")
    public ResponseEntity<String> createOrder(@RequestBody OrderPayload payload) {
        Order order = new Order();
        order.setProduct(payload.getProduct());
        order.setCustomer(payload.getCustomer());
        orderService.saveOrder(order);
        return new ResponseEntity<>("Order created successfully", HttpStatus.CREATED);
    }

    public Optional<Order> getOrderById(Long id){
        return orderService.getOrderById(id);
    }
}
