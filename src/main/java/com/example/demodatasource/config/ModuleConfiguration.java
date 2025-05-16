package com.example.demodatasource.config;


import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.FileSystemResource;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.sql.DataSource;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Properties;
import java.util.PropertyResourceBundle;
import java.util.ResourceBundle;

@Configuration
@EnableTransactionManagement
@EnableJpaRepositories(entityManagerFactoryRef = "EntityManagerFactory", transactionManagerRef = "TransactionManager",
        basePackages = {"com.example.demodatasource.Module.repository"})
public class ModuleConfiguration {
        File propertyFile;
        @Value("${spring.jpa.hibernate.dialect}")
        private String DIALECT;

        @Value("${spring.jpa.show-sql}")
        private String SHOW_SQL;

        @Value("com")
        private String PACKAGES_TO_SCAN;

        public void OSCheck() {
            String command = "";
            String sOsName = System.getProperty("os.name");

            if (sOsName.startsWith("Windows")) {
                System.out.println("WINDOWS OS");
                String filePath = new FileSystemResource("").getFile().getAbsolutePath();

                propertyFile = new File(filePath+"\\MVSqueue.conf");
            } else {

                if ((sOsName.startsWith("Linux")) || (sOsName.startsWith("Mac")) || (sOsName.startsWith("HP-UX"))) {
                    System.out.println("LINUX OS");
                    propertyFile = new File("./MVSqueue.conf");
                } else {
                    System.out.println("The current operating system '" + sOsName + "' is not supported.");
                }
            }
        }




        @Bean("dataSource")
        public DataSource dataSource() {
            OSCheck();
            DriverManagerDataSource dataSource = new DriverManagerDataSource();
            try {
                InputStream in = new FileInputStream(propertyFile);
                ResourceBundle resource = new PropertyResourceBundle(in);
                dataSource.setDriverClassName(resource.getString("db.driver"));
                dataSource.setUrl(resource.getString("db.url"));
                dataSource.setUsername(resource.getString("db.username"));
                dataSource.setPassword(resource.getString("db.password"));


            } catch (Exception e) {
                e.printStackTrace();
            }
            return dataSource;
        }

        @Bean(name = "EntityManagerFactory")
        public LocalSessionFactoryBean sessionFactory() {
            LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
            sessionFactory.setDataSource(dataSource());
            sessionFactory.setPackagesToScan("com.example.demodatasource.Module.Model");
            Properties hibernateProperties = new Properties();
            hibernateProperties.put("hibernate.dialect", DIALECT);
            hibernateProperties.put("hibernate.show_sql", SHOW_SQL);
            sessionFactory.setHibernateProperties(hibernateProperties);

            return sessionFactory;
        }

        @Bean(name = "TransactionManager")
        public HibernateTransactionManager transactionManager() {
            HibernateTransactionManager transactionManager = new HibernateTransactionManager();
            transactionManager.setSessionFactory(sessionFactory().getObject());
            return transactionManager;
        }
    }



