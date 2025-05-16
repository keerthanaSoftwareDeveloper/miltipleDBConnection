package com.example.demodatasource.repository;

import com.example.demodatasource.model.ProductStore;
import com.example.demodatasource.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.xml.crypto.Data;
import java.util.Date;
import java.util.List;


@Repository
public interface UserDetailRepository extends JpaRepository<User, Integer> {




    @Query(value = "select s from User s where s.email=:email and s.password=:password ")
    User findByEmailAndPwd(String email, String password);

    @Query(value = "select  s from User s where s.name=:name ")
    User findName(String name);

@Modifying
@Transactional
@Query(value = "update  User  u set u.loginTime=:localDateTime where u.email=:email")
    int findEmail(Date localDateTime,String email);
//    @Modifying
//    @Query(value = "insert into userdetail (email,login_time) VALUES (:email,:valueOf)", nativeQuery = true)
//    @Transactional
//    int add(String email, String valueOf);

//    @Modifying
//    @Query(value = "insert into User (email,login_time) VALUES (:email,:date)", nativeQuery = true)
//    @Transactional
//    String add(String email, String date1);
}
//    @Modifying
//    @Query(value = "insert into Logger (redirect,user_id) VALUES (:insertLink,:id)", nativeQuery = true)
//    @Transactional
//    void logURI(@Param("insertLink") String insertLink, @Param("id") Long id);
//@Query("update User u set u.firstname = ?1, u.lastname = ?2 where u.id = ?3")
