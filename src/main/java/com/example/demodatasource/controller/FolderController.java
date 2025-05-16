package com.example.demodatasource.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;
import java.util.stream.Stream;

import static org.apache.commons.io.FileUtils.getFile;
import static org.springframework.data.jpa.domain.AbstractPersistable_.id;


@RestController
public class FolderController {


    Logger logger = LoggerFactory.getLogger(FolderController.class);

    @RequestMapping("/fl")
    public String main() throws IOException {
        File file = new File("D:\\Test");

        if (!file.exists()) {
            if (file.mkdir()) {
                System.out.println(file + "  :Folder is created successfully");
            } else {
                System.out.println("Directory/Folder creation failed!!!");
            }
        }
        return "created";
    }

    @RequestMapping("flll")

    public int createFolder(String path) throws IOException {

        Date now = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("hhmmss");
        String time = dateFormat.format(now);
        path = "D:\\Directory";
        File dir = new File(path);
        if (!dir.exists()) {
            if (dir.mkdir()) {
                logger.info(" file will be created.");
                System.out.println("New Folder created .... ");
            } else {
                logger.info(" file will be  not created.");
                System.out.println("File already exists !!! ...");
            }
        }

        try (Stream<Path> files = Files.list(Paths.get("D:\\Directory"))) {
            long count = files.count();
            File file1 = new File(path + "/" + time);
            if (!file1.exists() && count < 10) {
                if (file1.mkdirs()) {
                    logger.info(" subfolder be created.");
                    System.out.println("subfolder  created ... ");
                }
            } else {
                logger.info(" subfolder not  created.");
                System.out.println("subfolder  not created ... ");
                createFolders(path);
            }
        }

        return createFolder(path);
    }

    private int createFolders(String path) throws IOException {
        Date now = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("hhmmss");
        String time = dateFormat.format(now);
        System.out.println("Enter the folder name: ");
        Scanner sc = new Scanner(System.in);
        path ="D:\\";
        path = path + sc.next();
        File file = new File(path);
        if(!file.exists() ) {
            boolean bool = file.mkdir();
            if (bool) {
                try (Stream<Path> files = Files.list(Paths.get(path))) {
                    long count = files.count();
                    File file1 = new File(path + "/" + time);
                    if (!file1.exists() && count < 10 ) {
                        if (file1.mkdirs()) {
                            logger.info(" subfolder be created.");
                            System.out.println("Directory created successfully");
                        }
                    }
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
            else {
            System.out.println("Sorry couldn't create specified directory");

        }
        return  createFolder(path);
    }





    @RequestMapping("/fll")


    public void createFolder() {
        int count = 0;
        File file = new File("D:\\ata" + "/" + count);
        if (!file.exists()) {
            if (file.mkdir()) {
                System.out.println("Directory is created!");
                count++;
            }
        }
    else {
            System.out.println("Failed to create directory!");
            count++;
            createFolder();
        }
    }
    }













































//    @RequestMapping("/t")
//    public File createOrRetrieve(  String target) throws IOException {
//         File answer;
//        target="D:\\as";
//        Path path = Paths.get(target);
//        File file=new File(target);
//        Path parent = path.getParent();
//        if(parent != null && Files.exists(parent)) {
//            file.mkdir();
//        }
//        if(Files.exists(path)) {
//            logger.info("Target file \"" + target + "\" will be created.");
//            answer = Files.createFile(path).toFile();
//        } else {
//            logger.info("Target file \"" + target + "\" will be retrieved.");
//            answer = path.toFile();
//        }
//        return answer;
//    }
//
//
//}

//    private long getFolderSize(File folder) {
//        long length = 0;
//        File[] files = folder.listFiles();
//
//        int count = files.length;
//
//        for (int i = 0; i < count; i++) {
//            if (files[i].isFile()) {
//                length += files[i].length();
//            } else {
//                length += getFolderSize(files[i]);
//            }
//        }
//        return length;
//    }
//}
//    public void main(String dirPath, String path) {
//        dirPath = "D:";
//        path = "\\test";
//
//        Path path1 = Paths.get(dirPath);
//        if (!Files.exists(path1)) {
//            try {
//                Files.createDirectories(path1);
//            } catch (IOException e) {
//                e.printStackTrace();
//            }
//        }
//
//        try (Writer writer = new BufferedWriter(new OutputStreamWriter(
//                new FileOutputStream(dirPath + path), "utf-8"))) {
//            writer.write("something");
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//    }
//}
//    @RequestMapping("for")
//    private void createUserDir( String dirName) throws IOException {
//
//        dirName="D:\\Directory";
//        final File homeDir = new File(System.getProperty(dirName));
//        final File dir = new File(homeDir, dirName);
//        if (!dir.exists() && !dir.mkdirs()) {
//            throw new IOException("Unable to create " + dir.getAbsolutePath());
//
//        }
//    }
//}
//    public static void displayDirectoryFiles(String path) {
//        path= "D:";
//        String[] pathArr = path.split(path);
//        String str = pathArr[10].;
//        int size = 10;
//
//        for(int i = 1; i <  size ; i++)
//        {
//
//            str = str + "\\" + pathArr[i];
//        }


//        try {
//            File[] files = path.listFiles();
//            for (File file : files ) {
//                if (file.isDirectory()) {
//                    System.out.println("directory:" + file.getCanonicalPath());
//                } else {
//                    System.out.println("     file:" + file.getCanonicalPath());
//                }
//            }
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//    }







