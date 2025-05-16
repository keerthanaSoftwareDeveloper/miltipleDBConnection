package com.example.demodatasource.Module.controller;

import com.example.demodatasource.Module.Model.Customer;
import com.example.demodatasource.Module.Model.PurchusDetails;
import com.example.demodatasource.Module.repository.PurchusRepo;
import com.example.demodatasource.Module.repository.Repo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

//@RestController
@Controller
public class CustomerController {
//    @Autowired
//    private CustomerService customerService;
    @Autowired
    private Repo repo;
    @Autowired
    private PurchusRepo purchusRepo;

//    @PostMapping("/saver")
//    public String sets(@RequestBody Customer customer) {
//        System.out.println(customer);
////        Customer customer1 = repo.save(customer);
//        return "customer" + customer;
//    }


    @RequestMapping(path="/addQuantity",method = RequestMethod.GET)
    public String loginUser(@RequestParam(value = "quantity", required = false) String quantity, ModelMap map, @ModelAttribute(value= "Constants.CURRENT_CART")PurchusDetails purchusDetails) {

        map.addAttribute(quantity);
        return "ProductList";
    }



    @GetMapping("/cc")
    public String viewHomePage(Model model) {
        List<PurchusDetails> purc = repo.findAll();
        model.addAttribute("List", purc);
        System.out.println(model);
        return "nextList";
    }
    @RequestMapping("/pro")
    public String viewHomePages() {
//        List<PurchusDetails> purc = purchusRepo.findAll();

        return "ProductDetail";
    }

}

