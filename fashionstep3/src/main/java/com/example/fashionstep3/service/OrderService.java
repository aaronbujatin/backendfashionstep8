package com.example.fashionstep3.service;

import com.example.fashionstep3.repository.CustomerRepository;
import com.example.fashionstep3.repository.OrderRepository;
import com.example.fashionstep3.repository.ProductRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import com.example.fashionstep3.entity.Order;

import java.util.Optional;

@RequiredArgsConstructor
@Service
public class OrderService {


    private final OrderRepository orderRepository;

//    public void insertOrder(Product product, Customer customer) {
//        Order order = new Order();
//        order.setProduct(product);
//        order.setCustomer(customer);
//        orderRepository.save(order);
//    }

    private final CustomerRepository customerRepository;
    private final ProductRepository productRepository;
//
//    public void insertOrderFromCustomerAndProduct(Long customerId) throws Exception {
//        Customer customer = customerRepository.findById(customerId).orElseThrow(()->new Exception("Customer not found"));
//
//        Order order = new Order();
////        order.setTotalPurchase(product.getProductPrice() * );
//        order.setCustomer(customer);
//        orderRepository.save(order);
//    }


    public void saveOrder(Order order) {
        orderRepository.save(order);
    }

    public Optional<Order> getOrderById(Long orderId){
        return orderRepository.findById(orderId);
    }
}
