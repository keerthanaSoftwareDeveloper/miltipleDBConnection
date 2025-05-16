package com.example.demodatasource.model;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "results")

public class Prod {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private long id;

    @Column(name = "name")
    private String name;

    @Column(name = "email")
    private String email ;



}

