package com.example.admin.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.admin.model.Orders;

@Repository
public interface OrdersRepository extends JpaRepository<Orders, Integer>{
	
	Page<Orders> findAll(Pageable pageable);
	
	Orders findByOrderid(Integer orderid);
	
	@Modifying
	@Transactional
	@Query("DELETE FROM Orders WHERE orderid = :orderid")
	void deleteByOrderid(Integer orderid);
}
