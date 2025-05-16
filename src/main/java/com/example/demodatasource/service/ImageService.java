package com.example.demodatasource.service;

import com.example.demodatasource.model.Image;
import com.example.demodatasource.repository.ImageReposotory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Service
public class ImageService {
    @Autowired
    private ImageReposotory imageRepo;
}
//    public Image uploadImage(MultipartFile file) throws IOException {
//        Image pImage = new Image();
//        pImage.setName(file.getOriginalFilename());
//        pImage.setType(file.getContentType());
//        pImage.setImageData(ImageUtill.compressImage(file.getBytes()));
//        return imageRepo.save(pImage);
//}
