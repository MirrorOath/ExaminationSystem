package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.ScoreDao;
import dao.tables.Score;

@Controller
@RequestMapping(value = "/score/")
public class ScoreCtl {
    @Autowired
    ScoreDao scoreDao;

    @RequestMapping("GetScores")
    public @ResponseBody List<Score> GetScores() {
        return scoreDao.getAll();
    }

    @RequestMapping("SaveScore")
    public @ResponseBody Score SaveScore(Score obj) {
        return scoreDao.save(obj);
    }

    @RequestMapping("UpdateScore")
    public @ResponseBody Score UpdateScore(Score obj) {
        return scoreDao.update(obj.getId(), obj);
    }

    @RequestMapping("DelScore")
    public @ResponseBody boolean DelScore(Integer id) {
        scoreDao.del(scoreDao.getById(id));
        return true;
    }

}
