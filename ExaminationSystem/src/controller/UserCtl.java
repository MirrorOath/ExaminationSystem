package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import controller.util.Count;
import dao.AdminDao;
import dao.JustNowTestDao;
import dao.ScoreDao;
import dao.StudentDao;
import dao.TeacherDao;
import dao.tables.Admin;
import dao.tables.JustNowTest;
import dao.tables.Score;
import dao.tables.Student;
import dao.tables.Teacher;

@Controller
@RequestMapping(value = "/user/")
public class UserCtl {
    @Autowired
    AdminDao adminDao;
    @Autowired
    TeacherDao teacherDao;
    @Autowired
    StudentDao studentDao;
    @Autowired
    ScoreDao scoreDao;
    @Autowired
    JustNowTestDao justNowTestDao;

    @RequestMapping("signUp")
    public @ResponseBody Integer signUp(String name, String password, String type) {
        if ("教师".equals(type)) {
            if (teacherDao.getByName(name) != null)
                return -1;
            Teacher obj = new Teacher();
            obj.setName(name);
            obj.setPassword(password);
            teacherDao.save(obj);
            return 0;
        } else {
            if (studentDao.getByName(name) != null)
                return -1;
            Student obj = new Student();
            obj.setName(name);
            obj.setPassword(password);
            studentDao.save(obj);
            return 0;
        }
    }

    @RequestMapping("signIn")
    public @ResponseBody Integer signIn(HttpSession session, String name, String password, String type) {
        if ("管理员".equals(type)) {
            Admin obj = adminDao.getByName(name);
            if (obj == null)
                return -1;
            if (password.equals(obj.getPassword())) {
                session.setAttribute("admin", obj);
                return 0;
            }
            return -2;
        } else if ("教师".equals(type)) {
            Teacher obj = teacherDao.getByName(name);
            if (obj == null)
                return -1;
            if (password.equals(obj.getPassword())) {
                session.setAttribute("teacher", obj);
                return 1;
            }
            return -2;
        } else {
            Student obj = studentDao.getByName(name);
            if (obj == null)
                return -1;
            if (password.equals(obj.getPassword())) {
                session.setAttribute("student", obj);
                return 2;
            }
            return -2;
        }
    }
    
    @RequestMapping("signOut")
    public @ResponseBody boolean signOut(HttpSession session){
        session.removeAttribute("student");
        session.removeAttribute("teacher");
        session.removeAttribute("admin");
        return true;
    }

    @RequestMapping("getStu")
    public @ResponseBody Student getStu(HttpSession session) {
        Student obj = (Student) session.getAttribute("student");
        if (obj == null) {
            obj = new Student();
            obj.setSuccess(false);
        } else {
            obj = studentDao.getById(obj.getId());
            obj.setSuccess(true);
        }
        return obj;
    }

    @RequestMapping("getTea")
    public @ResponseBody Teacher getTea(HttpSession session) {
        Teacher obj = (Teacher) session.getAttribute("teacher");
        if (obj == null) {
            obj = new Teacher();
            obj.setSuccess(false);
        } else {
            obj = teacherDao.getById(obj.getId());
            obj.setSuccess(true);
        }
        return obj;
    }

    @RequestMapping("change")
    public @ResponseBody boolean change(HttpSession session, Student obj) {
        System.out.println(obj.toString());
        Student oldObj = (Student) session.getAttribute("student");
        if(oldObj == null)
            return false;
        studentDao.update(oldObj.getId(), obj);
        return true;
    }
    
    @RequestMapping("TeaChange")
    public @ResponseBody boolean TeaChange(HttpSession session, Teacher obj) {
        System.out.println(obj.toString());
        Teacher oldObj = (Teacher) session.getAttribute("teacher");
        if(oldObj == null)
            return false;
        teacherDao.update(oldObj.getId(), obj);
        return true;
    }
    
    @RequestMapping("getScore")
    public @ResponseBody List<Score> getScore(HttpSession session){
        Student obj = (Student) session.getAttribute("student");
        if(obj == null)
            return null;
        List<Score> objs = scoreDao.getByStuId(obj.getId());
        JustNowTest t;
        for(Score s : objs) {
            t = justNowTestDao.getById(s.getJsTestId());
            s.setStartTime(Count.getStringDate(t.getStartTime()));
            s.setEndTime(Count.getStringDate(t.getEndTime()));
        }
        return objs;
    }
    

}
