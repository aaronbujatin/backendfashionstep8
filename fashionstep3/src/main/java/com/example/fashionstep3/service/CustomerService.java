package com.example.fashionstep3.service;

import com.example.fashionstep3.entity.Customer;
import com.example.fashionstep3.entity.Order;
import com.example.fashionstep3.exception.CustomerNotFoundException;
import com.example.fashionstep3.repository.CustomerRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
@RequiredArgsConstructor
public class CustomerService {

    private final CustomerRepository customerRepository;

    public Customer saveCustomer(Customer customer){
        return customerRepository.save(customer);
    }

    public List<Customer> findAllCustomer(){
        return customerRepository.findAll();
    }

    public Customer findCustomerById(Long customerId){
        return customerRepository.findById(customerId)
                .orElseThrow(() -> new CustomerNotFoundException("Customer id of " + customerId + " was not found"));
    }

    public Customer updateCustomer(Customer customer){
        return customerRepository.save(customer);
    }

    public void deleteCustomerById(Long customerId){
        customerRepository.deleteById(customerId);
    }
}
