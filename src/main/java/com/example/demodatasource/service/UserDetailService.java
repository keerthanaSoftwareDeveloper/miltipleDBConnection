package com.example.demodatasource.service;

import com.example.demodatasource.model.ProductStore;
import com.example.demodatasource.model.User;
import com.example.demodatasource.repository.UserDetailRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserDetailService {


    @Autowired

    UserDetailRepository userdetailRepository;

//    public static User getEmployeeName(String name) {
//       User user= userdetailRepository.findByName(name);
//    }

    public  User getName(String name) {
        System.out.println(name);
        User user=userdetailRepository.findName(name);
        return user;
    }


    public User save(User user) {
        System.out.println("USER " +user);
        return userdetailRepository.save(user);
    }
}
