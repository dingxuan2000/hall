package com.example.hall.hallmanager;

import lombok.Data;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Data
@Entity
public class HallManager {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
    private Integer hall_id;

    @NotNull
    private String hall_name;

    @NotNull
    private String hall_community;

    @NotNull
    private String hall_house;

    @NotNull
    private String hall_address;

    @NotNull
    private int hall_area;

    @NotNull
    private int hall_table_num;

    @NotNull
    private int hall_deposit;



}
