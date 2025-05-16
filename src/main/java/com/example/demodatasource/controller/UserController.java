package com.example.demodatasource.controller;

import com.example.demodatasource.Module.repository.Repo;
import com.example.demodatasource.common.MacAddress;
//import com.example.demodatasource.common.UserValidator;
import com.example.demodatasource.model.User;
import com.example.demodatasource.repository.ProductRepository;
import com.example.demodatasource.repository.UserDetailRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;
import java.util.Date;
import java.util.List;
import java.util.Optional;


@Qualifier("")

@Controller
@Scope("session")
public class UserController {

    private static final String ALGO = "AES";
    private static final byte[] keyValue = new byte[]{'T', 'E', 'S', 'T'};

    @Autowired
    private ProductRepository productRepository;
    @Autowired
    Repo repo;

    @Autowired
    UserDetailRepository userdetailRepository;




    @Autowired
    static Logger logger = LoggerFactory.getLogger(UserController.class);

    @PostMapping("/saveUserDetails")
    public String saveuser(
            @RequestParam(value = "name", required = false) String name,
            @RequestParam(value = "email", required = false) String email,
            @RequestParam(value = "address", required = false) String address,
            @RequestParam(value = "password", required = false) String password


    ) throws IOException, IllegalBlockSizeException, BadPaddingException, InvalidKeyException, NoSuchAlgorithmException {
        System.out.println(name);
        System.out.println(email);
        System.out.println(address);
        System.out.println(password);
//        user.getId();
//        validates.validate(userForm, bindingResult);



        User user = new User();

//        password = user.getPassword();
        password = new MacAddress().md5Encode(password.getBytes());
        System.out.println(password);


        user.setId(user.getId());
        user.setName(name);
        user.setAddress(address);
        user.setEmail(email);
        user.setPassword(password);
        Date localDateTime = new Date();
        System.out.println(localDateTime);
        user.setDate(localDateTime);
        userdetailRepository.save(user);

        return "ProductDetail";
    }

    @GetMapping("/UserList")
    public String viewHomePagess(Model model) {
        List<User> users = userdetailRepository.findAll();
        model.addAttribute("listUsers", users);
        System.out.println(model);
        return "UserList";
    }

    @RequestMapping("user")
    public String users() {
        return "userdetails";
    }

    @RequestMapping("image")
    public String userss() {
        return "image";
    }

    @RequestMapping("/images")
    public static String storeLogoPath(MultipartFile file) {
        logger.info("File AAYA HAI " + file);
        String path = "";
        try {
            path = "/resources/static/philippines_logo.jpg" + file.getOriginalFilename();
            File newFile = new File(path);
            newFile.createNewFile();
            FileOutputStream myfile = new FileOutputStream(newFile);
            myfile.write(file.getBytes());
            path = "/img/storeLogo/" + file.getOriginalFilename();
            myfile.close();
            logger.info("File should be saved now :: ");
        } catch (Exception e) {
            e.printStackTrace();
        }
        logger.info("Path Returned is ::: " + path);
        return path;
    }

    @RequestMapping(value = "/loginUsers", method = RequestMethod.GET)
    public String showWelcomePage(@RequestParam("email") String email,
                                  @RequestParam("password") String password,
                                  HttpServletRequest request,
                                  RedirectAttributes redirectAttributes, ModelMap model
    ) throws IllegalBlockSizeException, BadPaddingException, InvalidKeyException, NoSuchPaddingException, NoSuchAlgorithmException {
        HttpSession session = request.getSession();
        System.out.println(session);
        password = new MacAddress().md5Encode(password.getBytes());
        User user = userdetailRepository.findByEmailAndPwd(email, password);
        System.out.println(user);

        return "ProductList";
    }

    @RequestMapping("/l")
    public String log() {
        return "log";
    }
}


