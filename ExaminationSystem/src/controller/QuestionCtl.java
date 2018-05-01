package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.QuestionDao;
import dao.tables.Question;

@Controller
@RequestMapping(value = "/qst/")
public class QuestionCtl {
    @Autowired
    QuestionDao questionDao;

    @RequestMapping("GetQuestions")
    public @ResponseBody List<Question> GetQuestions(){
        return questionDao.getAll();
    }

    @RequestMapping("SaveQuestion")
    public @ResponseBody Question SaveQuestion(Question obj){
        return questionDao.save(obj);
    }
    

    @RequestMapping("UpdateQuestion")
    public @ResponseBody Question UpdateQuestion(Question obj){
        return questionDao.update(obj.getId(), obj);
    }
    

    @RequestMapping("DelQuestion")
    public @ResponseBody boolean DelQuestion(Integer id){
        questionDao.del(questionDao.getById(id));
        return true;
    }
    
}
