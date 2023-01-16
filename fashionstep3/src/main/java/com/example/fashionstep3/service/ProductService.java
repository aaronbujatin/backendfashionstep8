package com.example.fashionstep3.service;

import com.example.fashionstep3.entity.Customer;
import com.example.fashionstep3.entity.Product;
import com.example.fashionstep3.exception.CustomerNotFoundException;
import com.example.fashionstep3.exception.ProductNotFoundException;
import com.example.fashionstep3.repository.ProductRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class ProductService {

    private final ProductRepository productRepository;

    public List<Product> findAllProduct(){
        return productRepository.findAll();
    }

    public Product findProductById(Long id){
        return productRepository.findById(id)
                .orElseThrow(() -> new ProductNotFoundException("Customer id of " + id + " was not found"));
    }

    public Product addProduct(Product product){
        return productRepository.save(product);
    }

    public Product updateProduct(Product product){
        return productRepository.save(product);
    }

    public void deleteProductById(Long id){
        productRepository.deleteProductById(id);
    }

    public List<Product> findByCategory(String category){
        return productRepository.findByCategory(category);
    }
}
