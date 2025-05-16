package com.example.demodatasource.Module.repository;


import com.example.demodatasource.Module.Model.Customer;
import com.example.demodatasource.Module.Model.PurchusDetails;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
@EnableJpaRepositories
@Transactional
@Repository
public interface Repo extends JpaRepository<PurchusDetails,Integer> {

    @Modifying
    @Query(value = "insert into Management (id,firstname,lastname,email) VALUES (:id,:name,:name,:email) ", nativeQuery = true)
    int saveOne(int id, String name, String email);
    @Modifying
    @Query(value = "insert into purchusdetails (quantity,cost,product_id,user_id,brand,product_name,prize) VALUES (:quantity,:cost,:pid,:cid,:brand,:productName,:prize) ", nativeQuery = true)
    int saveTwo( int quantity, double cost, int pid,int cid,String brand, String productName,double prize);
    @Modifying
    @Query(value = "insert into Purchusdetails (cid) VALUES (:cid) ", nativeQuery = true)
    void savecid(int cid);
@Query(value = "select s from  PurchusDetails s where s.userid=:cid ")
List<PurchusDetails> findByPidAndCid( int cid);


    @Query(value = "SELECT t1 FROM PurchusDetails t1  where t1.userid= t1.userid ")
    ArrayList<PurchusDetails> download();

//    List<PurchusDetails> findByPidAndCid(int pid, int cid, int quantity, double cost);
}


