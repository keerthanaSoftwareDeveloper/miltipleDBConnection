package com.example.demodatasource.Module.Model;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Data
@Entity
@Table(name = "Management`")
public class Customer  {
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Id
    @Column(name="id")
    private int id;

    private String firstname;
    private String lastname;
    private String email;

}
