package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import dao.tables.Authroity;
import dao.util.UtilDao;
import dao.util.UtilFactory;

@Repository
public class AuthroityDao extends UtilDao<Authroity> {

    public List<Authroity> getAll() {
        return getAll("Authroity");
    }

    public Authroity getById(Integer id) {
        return getById("Authroity", id);
    }

    public Authroity update(Integer id, Authroity newObj) {
        Session session = UtilFactory.getSession();
        Transaction tx = session.beginTransaction();

        Authroity oldObj = (Authroity) session.get(Authroity.class, id);

        tx.commit();
        session.close();
        return oldObj;
    }
}
