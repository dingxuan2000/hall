package com.example.hall.hallmanager;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

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

    public Integer getHall_id() {
        return hall_id;
    }

    public void setHall_id(Integer hall_id) {
        this.hall_id = hall_id;
    }

    public String getHall_name() {
        return hall_name;
    }

    public void setHall_name(String hall_name) {
        this.hall_name = hall_name;
    }

    public String getHall_community() {
        return hall_community;
    }

    public void setHall_community(String hall_community) {
        this.hall_community = hall_community;
    }

    public String getHall_house() {
        return hall_house;
    }

    public void setHall_house(String hall_house) {
        this.hall_house = hall_house;
    }

    public String getHall_address() {
        return hall_address;
    }

    public void setHall_address(String hall_address) {
        this.hall_address = hall_address;
    }

    public int getHall_area() {
        return hall_area;
    }

    public void setHall_area(int hall_area) {
        this.hall_area = hall_area;
    }

    public int getHall_table_num() {
        return hall_table_num;
    }

    public void setHall_table_num(int hall_table_num) {
        this.hall_table_num = hall_table_num;
    }

    public int getHall_deposit() {
        return hall_deposit;
    }

    public void setHall_deposit(int hall_deposit) {
        this.hall_deposit = hall_deposit;
    }


}
