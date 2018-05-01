package dao.tables;

public class Score {
    private Integer id;
    private Integer stuId;
    private Integer courseNo;
    private Double totalScore;
    private Double score;
    private boolean Pass;
    private boolean ReTest;
    private Double reTestMark;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getStuId() {
        return stuId;
    }

    public void setStuId(Integer stuId) {
        this.stuId = stuId;
    }

    public Integer getCourseNo() {
        return courseNo;
    }

    public void setCourseNo(Integer courseNo) {
        this.courseNo = courseNo;
    }

    public Double getTotalScore() {
        return totalScore;
    }

    public void setTotalScore(Double totalScore) {
        this.totalScore = totalScore;
    }

    public Double getScore() {
        return score;
    }

    public void setScore(Double score) {
        this.score = score;
    }

    public boolean isPass() {
        return Pass;
    }

    public void setPass(boolean pass) {
        Pass = pass;
    }

    public boolean isReTest() {
        return ReTest;
    }

    public void setReTest(boolean reTest) {
        ReTest = reTest;
    }

    public Double getReTestMark() {
        return reTestMark;
    }

    public void setReTestMark(Double reTestMark) {
        this.reTestMark = reTestMark;
    }

    @Override
    public String toString() {
        return "Score [id=" + id + ", stuId=" + stuId + ", courseNo=" + courseNo + ", totalScore=" + totalScore
                + ", score=" + score + ", Pass=" + Pass + ", ReTest=" + ReTest + ", reTestMark=" + reTestMark + "]";
    }

}
