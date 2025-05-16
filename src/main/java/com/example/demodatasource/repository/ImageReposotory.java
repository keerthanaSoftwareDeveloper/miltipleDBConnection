package com.example.demodatasource.repository;

import com.example.demodatasource.model.Image;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ImageReposotory extends JpaRepository<Image, Integer> {
    @Query(value = "select s from  Image s where s.imageData=:image  ")
    List<Image> findAllByImage(String image);
    @Query(value = "select s from  Image s where s.imageData=:image  ")
    List<Object> getSchoolIdAndName();
}
