package com.example.fashionstep3.repository;

import com.example.fashionstep3.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface  ProductRepository extends JpaRepository<Product, Long> {

    Optional<Product> findProductById(Long id);

    void deleteProductById(Long id);

    List<Product> findByCategory(String category);

    @Modifying
    @Query(value = "UPDATE tbl_product p1_0 SET p1_0.product_stock = p1_0.product_stock - ?2 WHERE p1_0.id = ?1", nativeQuery = true)
    int deductStock(Long productId, int quantity);

}
