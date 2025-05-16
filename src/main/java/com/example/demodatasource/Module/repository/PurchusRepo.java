package com.example.demodatasource.Module.repository;

import com.example.demodatasource.Module.Model.Customer;
import com.example.demodatasource.Module.Model.PurchusDetails;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface PurchusRepo extends JpaRepository<Customer,Integer> {

@Query(value = "select s from  PurchusDetails s where s.id=:id")
    List<PurchusDetails> findPurchusId(int id);
}
