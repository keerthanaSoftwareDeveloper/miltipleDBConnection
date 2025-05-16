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
@EnableJpaRepositories(entityManagerFactoryRef = "EntityManager-factory", transactionManagerRef = "TransactionManagers",
        basePackages = {"com.example.demodatasource.repository"})
public class ProductConfiguration {


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
                System.out.println("filepath :"+filePath);
            } else {

                if ((sOsName.startsWith("Linux")) || (sOsName.startsWith("Mac")) || (sOsName.startsWith("HP-UX"))) {
                    System.out.println("LINUX OS");
                    propertyFile = new File("./MVSqueue.conf");
                } else {
                    System.out.println("The current operating system '" + sOsName + "' is not supported.");
                }
            }
        }

        @Bean("dataSources")
        public DataSource dataSource() {
            OSCheck();
            DriverManagerDataSource dataSource = new DriverManagerDataSource();
            try{
                InputStream in = new FileInputStream(propertyFile);
                ResourceBundle resource = new PropertyResourceBundle(in);
                dataSource.setDriverClassName(resource.getString("db2.driver"));
                dataSource.setUrl(resource.getString("db2.url"));
                dataSource.setUsername(resource.getString("db2.username"));
                dataSource.setPassword(resource.getString("db2.password"));


            }
            catch (Exception e){
                e.printStackTrace();
            }

            return dataSource;
        }

        @Bean(name = "EntityManager-factory")
        public LocalSessionFactoryBean sessionFactory() {
            LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
            sessionFactory.setDataSource(dataSource());
            sessionFactory.setPackagesToScan("com.example.demodatasource.model");
            Properties hibernateProperties = new Properties();
            hibernateProperties.put("hibernate.dialect", DIALECT);
            hibernateProperties.put("hibernate.show_sql", SHOW_SQL);
            sessionFactory.setHibernateProperties(hibernateProperties);

            return sessionFactory;
        }

        @Bean(name="TransactionManagers")
        public HibernateTransactionManager transactionManager() {
            HibernateTransactionManager transactionManager = new HibernateTransactionManager();
            transactionManager.setSessionFactory(sessionFactory().getObject());
            return transactionManager;
        }
    }


