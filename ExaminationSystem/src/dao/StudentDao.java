package dao;

import java.util.List;

import org.hibernate.Query;
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
        oldObj.setAge(newObj.getAge());
        oldObj.setAuthority(newObj.getAuthority());
        oldObj.setClassName(newObj.getClassName());
        oldObj.setDepartment(newObj.getDepartment());
        oldObj.setEthnic(newObj.getEthnic());
        oldObj.setName(newObj.getName());
        oldObj.setNote(newObj.getNote());
        oldObj.setPassword(newObj.getPassword());

        tx.commit();
        session.close();
        return oldObj;
    }

    public Student getByName(String name) {
        Session session = UtilFactory.getSession();
        Transaction tx = session.beginTransaction();

        Query query = session.createQuery("from Student where name = ?");
        query.setString(0, name);
        Student obj = (Student) query.uniqueResult();

        tx.commit();
        session.close();
        return obj;
    }
    
}
