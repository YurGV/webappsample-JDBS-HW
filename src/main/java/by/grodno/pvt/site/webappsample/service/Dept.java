package by.grodno.pvt.site.webappsample.service;

import java.util.Date;

public class Dept {

    private Integer id;
    private String dept_name;

    public Dept(Integer id, String dept_name) {
        super();
        this.id = id;
        this.dept_name = dept_name;

    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDept_name() {
        return dept_name;
    }

    public void setDept_name(String dept_name) {
        this.dept_name = dept_name;
    }
}