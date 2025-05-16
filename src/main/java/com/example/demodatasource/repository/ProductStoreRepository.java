package com.example.demodatasource.repository;

import com.example.demodatasource.model.ProductStore;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Transactional
@Repository
public interface ProductStoreRepository extends JpaRepository<ProductStore,Integer> {
//    @Query(value = "select s from ProductStore s where s.email=:email and s.password=:password")
//    List<ProductStore> findBYEmailandPwd(String email, String password);
    @Query(value = "select  * from product_store s where s.id=:id ", nativeQuery = true)
    ProductStore findallById(int id);
    @Modifying
@Query(value = "update product_store  set date= now() at time zone 'Asia/Manila'  where id=:id", nativeQuery = true)
    void findDate(@Param("id") int id);
@Query(value = "select s from ProductStore s where s.id=:pid")
    ProductStore findId(int pid);
}
