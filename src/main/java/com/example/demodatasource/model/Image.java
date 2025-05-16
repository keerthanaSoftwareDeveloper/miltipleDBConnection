package com.example.demodatasource.model;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
@Getter
@Setter
@Data
@Entity
@Table(name = "product_image")
public class Image {


        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private Long id;


        @Column(name = "imagedata")
        private String imageData;

        public void getImageData(String base64EncodedImageBytes) {
        }



}
