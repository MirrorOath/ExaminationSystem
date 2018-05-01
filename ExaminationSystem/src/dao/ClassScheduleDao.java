package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import dao.tables.ClassSchedule;
import dao.util.UtilDao;
import dao.util.UtilFactory;

@Repository
public class ClassScheduleDao extends UtilDao<ClassSchedule> {

    public List<ClassSchedule> getAll() {
        return getAll("ClassSchedule");
    }

    public ClassSchedule getById(Integer id) {
        return getById("ClassSchedule", id);
    }


    public ClassSchedule update(Integer id, ClassSchedule newObj) {
        Session session = UtilFactory.getSession();
        Transaction tx = session.beginTransaction();

        ClassSchedule oldObj = (ClassSchedule) session.get(ClassSchedule.class, id);

        tx.commit();
        session.close();
        return oldObj;
    }
}
