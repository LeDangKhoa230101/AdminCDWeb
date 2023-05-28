package com.example.admin.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.admin.model.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {

	Page<Product> findAll(Pageable pageable);
	
	Product findByProductid(Integer productid);
	
	@Modifying
	@Transactional
	@Query("DELETE FROM Product WHERE productid = :productid")
	void deleteByProductid(Integer productid);
	
}
