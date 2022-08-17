package models;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
@JsonInclude(JsonInclude.Include.NON_DEFAULT)

public class UserController {

    private int id;
    private String name;
    private String address;
    private long marks;

    public UserController() {

    }

    public UserController(String name, String address, long marks) {
        this.name = name;
        this.address = address;
        this.marks = marks;
    }

    public UserController(int id, String name, String address, long marks) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.marks = marks;


    }

}


