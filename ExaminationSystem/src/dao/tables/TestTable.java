package dao.tables;

import java.util.Date;

public class TestTable {
    private Integer id;
    private String name;
    private String thing;
    private Date date;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getThing() {
        return thing;
    }

    public void setThing(String thing) {
        this.thing = thing;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "TestTables [id=" + id + ", name=" + name + ", thing=" + thing + ", date=" + date + "]";
    }

}
