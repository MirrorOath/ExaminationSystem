package controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import controller.util.Count;
import dao.JustNowTestDao;
import dao.QuestionDao;
import dao.tables.Question;

@Controller
@RequestMapping(value = "/jnTest/")
public class TestTCtl {
    @Autowired
    QuestionDao questionDao;
    @Autowired
    JustNowTestDao justNowTestDao;

    @RequestMapping("getTestPaper")
    public @ResponseBody List<Question> getTestPaper() {
        List<Question> all = questionDao.getAll();
        List<Question> result = new ArrayList<Question>();
        while (result.size() < 3) {
            int index = (int) (Math.random() * all.size());
            System.out.println(index + "----" + all.get(index));
            result.add(all.get(index));
            all.remove(index);
        }
        for (Question s : result) {
            s.setStartTime(Count.getStringDate(new Date()));
            System.out.println(s.toString());
        }
        return result;
    }
}
