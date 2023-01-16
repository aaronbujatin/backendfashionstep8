package com.example.fashionstep3.controller;

import com.example.fashionstep3.entity.Product;
import com.example.fashionstep3.service.ProductService;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/v1/product")
@CrossOrigin("*")
@RequiredArgsConstructor
@Transactional
public class ProductController {

    private final ProductService productService;

    @PostMapping("/add")
    public Product addProduct(@RequestBody Product product){
        return productService.addProduct(product);
    }

    @GetMapping("/all")
    public List<Product> findAllProduct(){
        return productService.findAllProduct();
    }

    @GetMapping("/{id}")
    public Optional<Product> findProductById(@PathVariable("id") Long id){
        return Optional.ofNullable(productService.findProductById(id));
    }

    @PutMapping("/update")
    public ResponseEntity<Product> updateProduct(@RequestBody Product product){
        Product updateProduct = productService.updateProduct(product);
        return new ResponseEntity<>(updateProduct, HttpStatus.OK);
    }

    @DeleteMapping("/delete/{id}")
    public void deleteProduct(@PathVariable ("id")Long id){
        productService.deleteProductById(id);
    }

    @GetMapping("/category")
    public List<Product> findByCategory(@RequestParam String category){
        return productService.findByCategory(category);
    }
    
}
