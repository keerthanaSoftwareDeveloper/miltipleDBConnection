//package com.example.demodatasource.Module.service;
//
//import com.example.demodatasource.Module.repository.Repo;
//import com.example.demodatasource.model.ProductStore;
//import com.example.demodatasource.repository.ProductStoreRepository;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import java.text.SimpleDateFormat;
//import java.util.Date;
//import java.util.TimeZone;
//
//@Service
//public class CustomerService {
//    @Autowired
//    private Repo repo;
//@Autowired
//    ProductStoreRepository productStoreRepository;
//    public ProductStore getEmployeeById(int id) {
//        SimpleDateFormat dateFormatGmt = new SimpleDateFormat("yyyy-MM-dd");
//        dateFormatGmt.setTimeZone(TimeZone.getTimeZone("Asia/Manila"));
//        System.out.println(dateFormatGmt.format(new Date())+"");
//
//
//        ProductStore contact1 = productStoreRepository.findallById(id);
//            return contact1;
//    }
//
////    @Autowired
////   ;
//}
