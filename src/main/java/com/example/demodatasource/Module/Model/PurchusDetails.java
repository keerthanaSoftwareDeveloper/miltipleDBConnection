package com.example.demodatasource.Module.Model;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.io.Serializable;
@NoArgsConstructor

@Data
@Entity
@Table(name = "Purchusdetails")
public class PurchusDetails implements Serializable {
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Id
    @Column(name="id")
    private int id;

    @Column(name = "quantity")
    private String Quantity;

    @Column(name = "cost")
    private double Cost;
    @Column(name = "user_id")
private int userid   ;
    @Column(name = "product_id")
    private int productid;

    @Column(name = "brand")
    private String brand;

    @Column(name ="product_name" )
    private String productName;


    @Column(name ="prize" )

  private  double prize;
}
