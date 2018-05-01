package dao;

import java.util.List;

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

        tx.commit();
        session.close();
        return oldObj;
    }
}
