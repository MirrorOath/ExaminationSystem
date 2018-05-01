package dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import dao.tables.Teacher;
import dao.util.UtilDao;
import dao.util.UtilFactory;

@Repository
public class TeacherDao extends UtilDao<Teacher> {

    public List<Teacher> getAll() {
        return getAll("Teacher");
    }

    public Teacher getById(Integer id) {
        return getById("Teacher", id);
    }

    public Teacher update(Integer id, Teacher newObj) {
        Session session = UtilFactory.getSession();
        Transaction tx = session.beginTransaction();

        Teacher oldObj = (Teacher) session.get(Teacher.class, id);
        oldObj.setAge(newObj.getAge());
        oldObj.setAuthority(newObj.getAuthority());
        oldObj.setDepartment(newObj.getDepartment());
        oldObj.setName(newObj.getName());
        oldObj.setNote(newObj.getNote());
        oldObj.setPassword(newObj.getPassword());
        oldObj.setProfession(newObj.getProfession());
        oldObj.setSex(newObj.getSex());

        tx.commit();
        session.close();
        return oldObj;
    }

    public Teacher getByName(String name) {
        Session session = UtilFactory.getSession();
        Transaction tx = session.beginTransaction();

        Query query = session.createQuery("from Teacher where name = ?");
        query.setString(0, name);
        Teacher obj = (Teacher) query.uniqueResult();

        tx.commit();
        session.close();
        return obj;
    }

}
