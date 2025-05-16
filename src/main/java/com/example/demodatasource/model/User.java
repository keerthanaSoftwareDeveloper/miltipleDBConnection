package com.example.demodatasource.model;
import com.sun.istack.NotNull;
import lombok.Data;

import javax.persistence.*;

import java.io.Serializable;
 import java.util.Date;

@Data
@Entity

@Table(name = "userdetail")
public class User implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private int id;


//    @NotNull
//    @Size(min = 5, message = " Name is required")
    @Column(name = "name")
    private String name;


//    @Email(message = "Invalid email! Please enter valid email")
    @Column(name="email", unique = true)
    private String email;

//    @Pattern(regexp = "^[a-zA-Z0-9]{5}", message = "only 5 chars/digits")
    @Column(name="password")
    private String password;

//    @NotNull
//    @Size(min = 5, message = " address is required")
    @Column(name="address")
    private String address;

//    @NotNull
//    @Size(min = 5, message = " Name is required")
    @Column(name="date")
    private Date date;

    @Column(name = "login_time")
    private Date loginTime;




//    @Column(name = "image")
//    private String image;

}
//
//    CREATE TABLE User_details(
//        id int PRIMARY KEY,
//        name VARCHAR(255) , email VARCHAR(255),address VARCHAR(255),password VARCHAR(255) ,date timestamp
//        );
