package com.example.demodatasource.model;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDateTime;

@Data
@Entity
@Table(name = "product_store")
public class ProductStore implements Serializable {

  @Id
//  @GeneratedValue(strategy = GenerationType.SEQUENCE)
  @GeneratedValue(strategy = GenerationType.IDENTITY)


  @Column(name = "id")
  private int id;

    @Column(name = "brand")
    private String Brand;

    @Column(name = "productname")
    private String ProductName;

    @Column(name = "prize")
    private String Prize;
//
//
//    @Column(name = "email")
//   private String email;
//
//    @Column(name = "pwd")
//    private String password;

    @Column(name = "date")
    private LocalDateTime localDateTime;
}
