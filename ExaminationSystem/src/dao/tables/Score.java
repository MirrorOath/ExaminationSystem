package dao.tables;

public class Score {
    private Integer id;
    private Integer stuId;
    private Integer jsTestId;
    private Integer courseNo;
    private String courseName;
    private Double totalScore;
    private Double score;
    private boolean Pass;
    private boolean ReTest;
    private Double reTestMark;
    private String startTime;
    private String endTime;

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

    public Integer getJsTestId() {
        return jsTestId;
    }

    public void setJsTestId(Integer jsTestId) {
        this.jsTestId = jsTestId;
    }

    public Integer getCourseNo() {
        return courseNo;
    }

    public void setCourseNo(Integer courseNo) {
        this.courseNo = courseNo;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
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

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    @Override
    public String toString() {
        return "Score [id=" + id + ", stuId=" + stuId + ", jsTestId=" + jsTestId + ", courseNo=" + courseNo
                + ", courseName=" + courseName + ", totalScore=" + totalScore + ", score=" + score + ", Pass=" + Pass
                + ", ReTest=" + ReTest + ", reTestMark=" + reTestMark + ", startTime=" + startTime + ", endTime="
                + endTime + "]";
    }

}
