package com.example.hall.houseManager;


import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
public class HouseManager {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO, generator = "native")
    @GenericGenerator(name = "native", strategy = "native")
    private Integer house_id;

    @NotNull
    private String house_name;

    @NotNull
    private Integer comm_id;

    //------------------------Get Methods----------------
    public Integer getHouse_id() { return house_id; }
    public String getHouse_name() {
        return house_name;
    }
    public Integer getComm_id() {
        return comm_id;
    }

    //------------------------Set Methods----------------
    public void setHouse_id(Integer house_id) {
        this.house_id = house_id;
    }
    public void setHouse_name(String house_name) {
        this.house_name = house_name;
    }
    public void setComm_id(Integer comm_id) {
        this.comm_id = comm_id;
    }
}
