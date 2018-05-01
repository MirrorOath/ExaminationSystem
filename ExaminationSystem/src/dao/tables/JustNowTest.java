package dao.tables;

import java.util.Date;

public class JustNowTest {
    private Integer id;
    private String testName;
    private Double testScore;
    private Date startTime;
    private Date endTime;
    private String numberOfQuestions;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTestName() {
        return testName;
    }

    public void setTestName(String testName) {
        this.testName = testName;
    }

    public Double getTestScore() {
        return testScore;
    }

    public void setTestScore(Double testScore) {
        this.testScore = testScore;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public String getNumberOfQuestions() {
        return numberOfQuestions;
    }

    public void setNumberOfQuestions(String numberOfQuestions) {
        this.numberOfQuestions = numberOfQuestions;
    }

    @Override
    public String toString() {
        return "JustNowTest [id=" + id + ", testName=" + testName + ", testScore=" + testScore + ", startTime="
                + startTime + ", endTime=" + endTime + ", numberOfQuestions=" + numberOfQuestions + "]";
    }

}
