package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import dao.tables.Score;
import dao.util.UtilDao;
import dao.util.UtilFactory;

public class ScoreDao extends UtilDao<Score> {

    public List<Score> getAll() {
        return getAll("Score");
    }

    public Score getById(Integer id) {
        return getById("Score", id);
    }

    public Score update(Integer id, Score newObj) {
        Session session = UtilFactory.getSession();
        Transaction tx = session.beginTransaction();

        Score oldObj = (Score) session.get(Score.class, id);
        oldObj.setCourseNo(newObj.getCourseNo());
        oldObj.setPass(newObj.isPass());
        oldObj.setReTestMark(newObj.getReTestMark());
        oldObj.setScore(newObj.getScore());
        oldObj.setStuId(newObj.getStuId());
        oldObj.setTotalScore(newObj.getTotalScore());
        oldObj.setReTest(newObj.isReTest());

        tx.commit();
        session.close();
        return oldObj;
    }
}
