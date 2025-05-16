package com.example.demodatasource.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.Column;
import java.time.ZonedDateTime;


@Data
public class DtoClass {

    private String Brand;

    private String ProductName;

    private double productPrize;


    @JsonFormat( pattern = "yyyy-MM-dd",
            with = JsonFormat.Feature.WRITE_DATES_WITH_ZONE_ID)
    @DateTimeFormat( pattern = "yyyy-MM-dd", iso = DateTimeFormat.ISO.DATE_TIME )
    private ZonedDateTime zonedDateTime;
}
