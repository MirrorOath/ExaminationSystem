package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import dao.tables.Student;
import dao.util.UtilDao;
import dao.util.UtilFactory;

@Repository
public class StudentDao extends UtilDao<Student> {

    public List<Student> getAll() {
        return getAll("Student");
    }

    public Student getById(Integer id) {
        return getById("Student", id);
    }

    public Student update(Integer id, Student newObj) {
        Session session = UtilFactory.getSession();
        Transaction tx = session.beginTransaction();

        Student oldObj = (Student) session.get(Student.class, id);

        tx.commit();
        session.close();
        return oldObj;
    }
}
