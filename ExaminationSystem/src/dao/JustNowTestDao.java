package dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import dao.tables.JustNowTest;
import dao.util.UtilDao;
import dao.util.UtilFactory;

@Repository
public class JustNowTestDao  extends UtilDao<JustNowTest> {

    public List<JustNowTest> getAll() {
        return getAll("JustNowTest");
    }

    public JustNowTest getById(Integer id) {
        return getById("JustNowTest", id);
    }

    public JustNowTest update(Integer id, JustNowTest newObj) {
        Session session = UtilFactory.getSession();
        Transaction tx = session.beginTransaction();

        JustNowTest oldObj = (JustNowTest) session.get(JustNowTest.class, id);

        tx.commit();
        session.close();
        return oldObj;
    }
}
