package com.example.demodatasource.controller;

import com.example.demodatasource.Module.repository.Repo;
import com.example.demodatasource.model.Image;
import com.example.demodatasource.repository.ImageReposotory;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;

@Controller
public class ImageController {
    @Autowired
    ImageReposotory imageReposotory;
    @Autowired
    Repo repo;

    @RequestMapping("/imagess")
    public String im() {
        return "image";
    }

    @RequestMapping("/img")


    public String imagesa(ModelMap modelMap) throws IOException {
        String pathTo = "src/main/resources/static/philippines_logo.jpg";
        Path path = Paths.get(pathTo);
        if (Files.notExists(path)) {
            throw new IllegalArgumentException("Image does not exist at the specified path");
        }
        try {
            byte[] imageBytes = Files.readAllBytes(path);
            String base64 = Base64.getEncoder().encodeToString(imageBytes);// base64
            System.out.println("Base 64 Encoded" + base64);
            Image image = new Image();
            image.setImageData(base64);
            imageReposotory.save(image);
            System.out.println(".......................................");

        } catch (IOException e) {
            e.printStackTrace();
        }


        return "image";
    }

    @RequestMapping("/listimg")
    public String imageList(Model modelMap) {


        List<Image> imageList = imageReposotory.findAll();
        System.out.println(imageList);
        String val = imageList.get(0).getImageData();
        System.out.println(val);
        modelMap.addAttribute("list", val);


        return "imag";

    }

    @RequestMapping("/imag")
    public String imagList(Model modelMap) {
        return "imag";
    }



    Logger logger
            = LoggerFactory.getLogger(ImageController.class);

    @RequestMapping("/log")
    public JSONObject log() {
        // Logging various log level messages
        logger.trace("Log level1: TRACE");
        logger.info("Log level2: INFO");
        logger.debug("Log leve3: DEBUG");
        logger.error("Log leve4: ERROR");
        logger.warn("Log level5: WARN");


        JSONObject obj = new JSONObject();
        obj.put("Name", "keerthi");
        obj.put("Email", "keerthi@gmail.com");
        JSONArray jsonArray = new JSONArray();
        jsonArray.add("Company: Facebook");
        jsonArray.add("Company: Instagram");
        jsonArray.add("Company: Google");
        obj.put("Company List", jsonArray);


        try {

         File file = new  File("D:\\sample.json");
            FileWriter fileWriter = new FileWriter(String.valueOf(file));
            logger.info("write");
            System.out.println("Writing JSON object to file");
            System.out.println("-----------------------");
            System.out.print(obj);

            fileWriter.write(obj.toJSONString());

     fileWriter.flush();
            fileWriter.close();

        } catch (IOException e) {
            e.printStackTrace();
        }

        return obj;
    }
}
