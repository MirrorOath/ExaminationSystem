package dao;

import java.util.List;

import org.hibernate.Query;
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
        oldObj.setDegreeOfDifficulty(newObj.getDegreeOfDifficulty());
        oldObj.setNote(newObj.getNote());
        oldObj.setProfession(newObj.getProfession());
        oldObj.setQuestionAnswer(newObj.getQuestionAnswer());
        oldObj.setQuestionContent(newObj.getQuestionContent());
        oldObj.setQuestionScore(newObj.getQuestionScore());
        oldObj.setQuestionType(newObj.getQuestionType());
        oldObj.setTeacherId(newObj.getTeacherId());

        tx.commit();
        session.close();
        return oldObj;
    }
    
    @SuppressWarnings("unchecked")
    public List<Question> getListByHard(Integer hard){
        Session session = UtilFactory.getSession();
        Transaction tx = session.beginTransaction();
        
        Query query = session.createQuery("from Question where degreeOfDifficulty = ?");
        query.setString(0, hard.toString());
        List<Question> qsts = query.list();

        tx.commit();
        session.close();
        return qsts;
    }
    
}
