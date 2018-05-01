package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import dao.tables.Question;
import dao.util.UtilDao;
import dao.util.UtilFactory;

@Repository
public class QuestionDao extends UtilDao<Question> {

    public List<Question> getAll() {
        return getAll("Question");
    }

    public Question getById(Integer id) {
        return getById("Question", id);
    }

    public Question update(Integer id, Question newObj) {
        Session session = UtilFactory.getSession();
        Transaction tx = session.beginTransaction();

        Question oldObj = (Question) session.get(Question.class, id);

        tx.commit();
        session.close();
        return oldObj;
    }
}
