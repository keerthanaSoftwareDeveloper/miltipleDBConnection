package com.example.demodatasource.controller;

import com.example.demodatasource.Module.Model.PurchusDetails;
import com.example.demodatasource.Module.repository.PurchusRepo;
import com.example.demodatasource.Module.repository.Repo;
//import com.example.demodatasource.Module.service.CustomerService;
//import com.example.demodatasource.SessionListener;
import com.example.demodatasource.common.MacAddress;
import com.example.demodatasource.model.Prod;
import com.example.demodatasource.model.ProductStore;
import com.example.demodatasource.model.User;
import com.example.demodatasource.repository.ProductRepository;
import com.example.demodatasource.repository.ProductStoreRepository;
import com.example.demodatasource.repository.UserDetailRepository;
import com.example.demodatasource.service.UserDetailService;
import org.apache.catalina.connector.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.server.Session;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.servlet.http.*;
import javax.xml.crypto.Data;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.*;
import java.time.format.DateTimeFormatter;
import java.util.*;

import static org.springframework.cache.interceptor.SimpleKeyGenerator.generateKey;


@Controller
@Scope("session")
public class ProductController   {


    Logger logger = LoggerFactory.getLogger(ProductController.class);





    @Autowired
    Repo repo;
    @Autowired
    ProductStoreRepository productStoreRepository;
    @Autowired
    UserDetailRepository userdetailRepository;
    @Autowired
    UserDetailService userDetailService;
    @Autowired
    private ProductRepository productRepository;
    //    private StaticFunctionTests sessionIds;
    @Autowired
    private PurchusRepo purchusRepo;

    @RequestMapping("/Login")
    private String view() {
        return ("ProductDetail");
    }


    @RequestMapping("/")
    private String vie() {
        return "UserLogin";
    }


    @PostMapping(value = "/aa")
    public String set(@RequestBody Prod product) {
        System.out.println(product);
        productRepository.save(product);
        long id1 = product.getId();
        int id = (int) id1;

        String name = product.getName();
        String email = product.getEmail();

        System.out.println(" id:" + product.getId());
        System.out.println("name : " + product.getName());
        System.out.println(" email:" + product.getEmail());


        int val = repo.saveOne(id, name, email);
        System.out.println("..................");

        return "val" + val;
    }

    @GetMapping("/bb")
    public String viewHomePage(Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        System.out.println("list:" + session);
        List<ProductStore> productStores = productStoreRepository.findAll();
        model.addAttribute("listUser", productStores);
        session.setAttribute("userId", productStores);
        System.out.println(model);
        return "ProductList";

    }

    @PostMapping(value = "/saveContact")
    public String sets(HttpServletRequest request,@RequestParam String productName, @RequestParam String prize, @RequestParam String brand, RedirectAttributes redirectAttributes, Model model) throws ParseException {
        System.out.println(productName);
        System.out.println(prize);

        HttpSession session = request.getSession();


        ProductStore productStore = new ProductStore();

        productStore.setId(productStore.getId());
        productStore.setBrand(brand);
        productStore.setPrize(prize);
        productStore.setProductName(productName);
        SimpleDateFormat dateFormatGmt = new SimpleDateFormat("yyyy-MM-dd");
        dateFormatGmt.setTimeZone(TimeZone.getTimeZone("Asia/Manila"));

        System.out.println(dateFormatGmt.format(new Date()));

        productStoreRepository.save(productStore);

        redirectAttributes.addFlashAttribute("successMessage", "Submitted Sucessfully");

        if (session.getAttribute("userId") == null) {
            System.out.println("session time out");
            model.addAttribute("Timeout", "Session-time out 10 sec");
            System.out.println(productStore);
        }
            return "ProductDetail";

        }

        @RequestMapping(value = "/loginUser", method = RequestMethod.GET)
    public String showWelcomePage(@RequestParam("email") String email,
                                  @RequestParam("password") String password,
                                  HttpServletRequest request,
                                 RedirectAttributes redirectAttributes, ModelMap model,HttpServletResponse servletResponse


  ) throws IllegalBlockSizeException, BadPaddingException, InvalidKeyException, NoSuchPaddingException, NoSuchAlgorithmException {
            HttpSession session = request.getSession();
            logger.info("sesstion Starts");

            password = new MacAddress().md5Encode(password.getBytes());
            User user = userdetailRepository.findByEmailAndPwd(email, password);
            session.setAttribute("userId", user);
            session.setMaxInactiveInterval(15);


            model.put("name", email);
            model.put("password", password);



        if (user != null) {
            Date localDateTime = new Date();
            int val = userdetailRepository.findEmail(localDateTime, email);
            System.out.println(" update login time" + val);
            List<ProductStore> productStores = productStoreRepository.findAll();
            model.addAttribute("user", productStores);
            logger.info("session running");

            return "ProductList";
        }

           if (session.getAttribute("userId") == null) {
               logger.info("Please  enter user name and password");

               session.invalidate();
               model.addAttribute("errorsMessage", "please enter valid Email and password");


               return "UserLogin";
           }
           else {
               return "UserLogin";


            }


    }




    @RequestMapping(value = "/update/{id}")
    public String tes(@PathVariable("id") int pid,
                       @RequestParam("brand") String brand,
                       @RequestParam("productName") String productName,
                       @RequestParam("prize") double prize,
                       @RequestParam("quantity") int quantity, ModelMap model, HttpServletRequest request,RedirectAttributes redirectAttributes){


        System.out.println("id       : " + pid);
        System.out.println("brand    : " + brand);
        System.out.println("Name     : " + productName);
        System.out.println("prize    : " + prize);
        System.out.println("quantity : " + quantity);
        HttpSession session = request.getSession();
        session.setMaxInactiveInterval(30);

        if(session.getAttribute("userId") == null) {
            System.out.println("session time out");
            logger.info("session logout");
            model.addAttribute("warning", "Session is Exprid ");
            return "UserLogin";
        }

        logger.info("session running");

        User user = (User) session.getAttribute("userId");

        Optional<ProductStore> productStore =
                productStoreRepository.findById(pid);


        ProductStore productStores = productStoreRepository.findId(pid);
        System.out.println(productStores.getPrize());
        prize = Double.parseDouble(productStores.getPrize());

        int cid = user.getId();
        double cost = quantity * prize;
        System.out.println(cost);
        productStores.getId();
        productStores.getProductName();
        productStores.getBrand();
        productStores.getPrize();

        System.out.println("Product_Id  :  " + productStores.getId());
        System.out.println("Product_name  :  " + productStores.getProductName());
        System.out.println("Product_brand  :  " + productStores.getBrand());
        System.out.println("Product_prize  :  " + productStores.getPrize());

        int val = repo.saveTwo(quantity, cost, pid, cid, brand, productName, prize);
        System.out.println("Update  :  " + val);


        model.addAttribute("order", user);
        model.addAttribute("ptoduct", productStores);
        List<PurchusDetails> purchusDetails = repo.findByPidAndCid(cid);
        System.out.println(purchusDetails);
        double val1 = 0;
        for (int i = 0; i < purchusDetails.size(); i++) {
            val1 += purchusDetails.get(i).getCost();
            System.out.println("val1 :" + val1);
        }

        model.addAttribute("dateeee", purchusDetails);
        model.addAttribute("total", val1);

        return "checkout";

        }


    @RequestMapping("/order")
    public String orders() {
        return "checkout";
    }


    @RequestMapping("/valid")
    private String vies() {
        return ("validation");
    }

    @RequestMapping("/va")
    private String v() {
        return ("nextList");
    }

    @RequestMapping("/date")
    public void date(){
         productStoreRepository.findDate(8);
    }

    @RequestMapping("/datess")
    public String datess(){
     return "FrontEndDesign";
    }



    @RequestMapping("/ss")
    public String userview(){
        return "userCreation";
    }
}
