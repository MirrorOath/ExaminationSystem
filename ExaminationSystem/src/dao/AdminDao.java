package dao;

import java.util.List;

import org.hibernate.Query;
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
        oldObj.setAuthority(newObj.getAuthority());
        oldObj.setName(newObj.getName());
        oldObj.setPassword(newObj.getPassword());

        tx.commit();
        session.close();
        return oldObj;
    }

    public Admin getByName(String name) {
        Session session = UtilFactory.getSession();
        Transaction tx = session.beginTransaction();

        Query query = session.createQuery("from Admin where name = ?");
        query.setString(0, name);
        Admin obj = (Admin) query.uniqueResult();

        tx.commit();
        session.close();
        return obj;
    }
    
}
