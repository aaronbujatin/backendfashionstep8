package com.example.fashionstep3.controller;
import com.example.fashionstep3.entity.Customer;
import com.example.fashionstep3.entity.Order;
import com.example.fashionstep3.entity.Product;
import com.example.fashionstep3.repository.ProductRepository;
import com.example.fashionstep3.service.CustomerService;
import com.example.fashionstep3.service.OrderService;
import com.example.fashionstep3.service.ProductService;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/v1/customer")
@RequiredArgsConstructor
@Transactional
@CrossOrigin("*")
public class CustomerController {

    private final CustomerService customerService;
    private final OrderService orderService;
    private final ProductService productService;
    private final ProductRepository productRepository;

    @PostMapping("/checkout")
    public void saveCustomer(@RequestBody Customer customer) throws Exception {
        customerService.saveCustomer(customer);

        Customer customer1 = customerService.findCustomerById(customer.getCustomerId());
        Order order = new Order();
        Product product = new Product();
        Product productNum = productService.findProductById(customer1.getProductNumber()); //id of product
        int productQty = customer1.getQuantity(); //get quantity of order
        double productPrice = productNum.getProductPrice(); // get the price of order
        String productName = productNum.getProductName(); // get the name of order

        double totalPayment = productQty * productPrice; // get the total purchase of order

        order.setOrderQty(productQty);
        order.setTotalPurchase(totalPayment);
        order.setProductName(productName);
        order.setProductPrice(productPrice);
        order.setCustomer(customer1);
        order.setProduct(productNum);
//        order.setProductName(productService.findProductById(customer.getProductNumber()));
        orderService.saveOrder(order);
//        orderService.insertOrderFromCustomerAndProduct(customer1.getCustomerId());

        // product stock - order quantity
        productRepository.deductStock(productNum.getId(), order.getOrderQty()) ;
    }

    @GetMapping("/all")
    public List<Customer> findAllCustomer(){
        return customerService.findAllCustomer();
    }

    @GetMapping("/{id}")
    public Customer findCustomerById(@PathVariable("id") Long customerId){
        return customerService.findCustomerById(customerId);
    }

    @PutMapping
    public Customer updateCustomer(Customer customer){
        return customerService.updateCustomer(customer);
    }

    @DeleteMapping("{id}")
    public void deleteCustomerById(@PathVariable("id") Long customerId){
        customerService.deleteCustomerById(customerId);
    }

    @PostMapping("/customer-order")
    public ResponseEntity<Object> customerAndOrder(@RequestBody Customer customer){

        return ResponseEntity.ok().build();
    }
}
