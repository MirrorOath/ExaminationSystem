package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import dao.tables.Admin;
import dao.util.UtilDao;
import dao.util.UtilFactory;

@Repository
public class AdminDao extends UtilDao<Admin> {

    public List<Admin> getAll() {
        return getAll("Admin");
    }

    public Admin getById(Integer id) {
        return getById("Admin", id);
    }

    public Admin update(Integer id, Admin newObj) {
        Session session = UtilFactory.getSession();
        Transaction tx = session.beginTransaction();

        Admin oldObj = (Admin) session.get(Admin.class, id);

        tx.commit();
        session.close();
        return oldObj;
    }
}
