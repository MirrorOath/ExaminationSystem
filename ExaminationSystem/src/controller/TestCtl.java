package controller;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.tables.TestTable;

@Controller
@RequestMapping(value = "/test/")
public class TestCtl {

    @RequestMapping("test")
    public @ResponseBody TestTable test(Integer id) {
        TestTable tt = new TestTable();
        tt.setId(0);
        tt.setName("Hello world");
        tt.setThing("dog");
        tt.setDate(new Date());
        System.out.print(tt.toString());
        return tt;
    }
}
