package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.AdminDao;
import dao.StudentDao;
import dao.TeacherDao;
import dao.tables.Admin;
import dao.tables.Student;
import dao.tables.Teacher;

@Controller
@RequestMapping(value = "/admin/")
public class AdminEasyUiCtl {
    @Autowired
    AdminDao adminDao;
    @Autowired
    TeacherDao teacherDao;
    @Autowired
    StudentDao studentDao;

    @RequestMapping("getAdmInfo")
    public @ResponseBody Admin getAdmInfo(HttpSession session) {
        Admin obj = (Admin) session.getAttribute("admin");
        if (obj == null) {
            obj = new Admin();
            obj.setSuccess(false);
        } else {
            obj = adminDao.getById(obj.getId());
            obj.setSuccess(true);
        }
        return obj;
    }

    @RequestMapping("change")
    public @ResponseBody boolean change(HttpSession session, Admin obj) {
        System.out.println(obj.toString());
        Admin oldObj = (Admin) session.getAttribute("admin");
        if (oldObj == null)
            return false;
        adminDao.update(oldObj.getId(), obj);
        return true;
    }

    @RequestMapping("GetStudents")
    public @ResponseBody List<Student> GetStudents() {
        return studentDao.getAll();
    }

    @RequestMapping("SaveStudent")
    public @ResponseBody Student SaveStudent(Student obj) {
        return studentDao.save(obj);
    }

    @RequestMapping("UpdateStudent")
    public @ResponseBody Student UpdateStudent(Student obj) {
        return studentDao.update(obj.getId(), obj);
    }

    @RequestMapping("DelStudent")
    public @ResponseBody boolean DelStudent(Integer id) {
        studentDao.del(studentDao.getById(id));
        return true;
    }

    @RequestMapping("GetTeachers")
    public @ResponseBody List<Teacher> GetTeachers() {
        return teacherDao.getAll();
    }

    @RequestMapping("SaveTeacher")
    public @ResponseBody Teacher SaveTeacher(Teacher obj) {
        return teacherDao.save(obj);
    }

    @RequestMapping("UpdateTeacher")
    public @ResponseBody Teacher UpdateTeacher(Teacher obj) {
        return teacherDao.update(obj.getId(), obj);
    }

    @RequestMapping("DelTeacher")
    public @ResponseBody boolean DelTeacher(Integer id) {
        teacherDao.del(teacherDao.getById(id));
        return true;
    }
    
}
