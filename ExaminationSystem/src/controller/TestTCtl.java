package controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import controller.util.Count;
import dao.JustNowTestDao;
import dao.QuestionDao;
import dao.ScoreDao;
import dao.StudentDao;
import dao.tables.JustNowTest;
import dao.tables.Question;
import dao.tables.Score;

@Controller
@RequestMapping(value = "/jnTest/")
public class TestTCtl {
    @Autowired
    QuestionDao questionDao;
    @Autowired
    JustNowTestDao justNowTestDao;
    @Autowired
    StudentDao studentDao;;
    @Autowired
    ScoreDao scoreDao;

    @RequestMapping("setReTest")
    public @ResponseBody boolean setReTest(HttpSession session, Integer scoreId) {
        session.setAttribute("scoreId", scoreId);
        return true;
    }

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

    @RequestMapping("postTestPaper")
    public @ResponseBody boolean postTestPaper(HttpSession session, String startTime, String qstA0, String qstA1,
            String qstA2, Integer qstId0, Integer qstId1, Integer qstId2, String stuName, String testName,
            String department) {
        Question qst0 = questionDao.getById(qstId0);
        Question qst1 = questionDao.getById(qstId1);
        Question qst2 = questionDao.getById(qstId2);
        Double totalScore = qst0.getQuestionScore() + qst1.getQuestionScore() + qst2.getQuestionScore();
        Double Score = 0.0;
        if (qstA0.equals(qst0.getQuestionAnswer())) {
            Score += qst0.getQuestionScore();
        }
        if (qstA1.equals(qst1.getQuestionAnswer())) {
            Score += qst1.getQuestionScore();
        }
        if (qstA2.equals(qst2.getQuestionAnswer())) {
            Score += qst2.getQuestionScore();
        }

        Integer scoreId = (Integer) session.getAttribute("scoreId");
        if (scoreId != null) {
            Score obj = scoreDao.getById(scoreId);
            obj.setReTest(true);
            obj.setTotalScore(totalScore);
            obj.setReTestMark(Score);
            obj.setPass((Score / totalScore) > 0.6 ? true : false);
            scoreDao.update(obj.getId(), obj);
            session.removeAttribute("scoreId");
        } else {
            JustNowTest jsTeset = new JustNowTest();
            jsTeset.setStartTime(Count.stringToDate(startTime));
            jsTeset.setEndTime(new Date());
            jsTeset.setNumberOfQuestions("3");
            jsTeset.setTestScore(totalScore);
            jsTeset.setTestName(testName);
            jsTeset = justNowTestDao.save(jsTeset);
            Score scoreObj = new Score();
            scoreObj.setStuId(studentDao.getByName(stuName).getId());
            scoreObj.setTotalScore(totalScore);
            scoreObj.setScore(Score);
            scoreObj.setJsTestId(jsTeset.getId());
            scoreObj.setPass((Score / totalScore) > 0.6 ? true : false);
            scoreObj.setReTest(false);
            scoreObj.setReTestMark(0.0);
            scoreObj.setCourseNo(0);
            scoreObj.setCourseName(department);
            scoreDao.save(scoreObj);
        }
        
        return true;
    }

}
