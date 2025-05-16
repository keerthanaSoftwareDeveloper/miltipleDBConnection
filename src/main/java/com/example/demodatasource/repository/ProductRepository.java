package com.example.demodatasource.repository;

import com.example.demodatasource.model.Prod;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Repository

public interface ProductRepository extends JpaRepository<Prod,Long> {


//    @Modifying
//    @Query(value = "insert into product_store (cid) VALUES (:cid) ", nativeQuery = true)
//    void savecid(int cid);
}
