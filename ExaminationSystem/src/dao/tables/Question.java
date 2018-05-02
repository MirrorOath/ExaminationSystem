package dao.tables;

public class Question {
    private Integer id;
    private String profession;
    private String questionType;
    private Integer degreeOfDifficulty;
    private String questionContent;
    private Double questionScore;
    private String questionAnswer;
    private Integer teacherId;
    private String note;
    private String startTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getProfession() {
        return profession;
    }

    public void setProfession(String profession) {
        this.profession = profession;
    }

    public String getQuestionType() {
        return questionType;
    }

    public void setQuestionType(String questionType) {
        this.questionType = questionType;
    }

    public Integer getDegreeOfDifficulty() {
        return degreeOfDifficulty;
    }

    public void setDegreeOfDifficulty(Integer degreeOfDifficulty) {
        this.degreeOfDifficulty = degreeOfDifficulty;
    }

    public String getQuestionContent() {
        return questionContent;
    }

    public void setQuestionContent(String questionContent) {
        this.questionContent = questionContent;
    }

    public Double getQuestionScore() {
        return questionScore;
    }

    public void setQuestionScore(Double questionScore) {
        this.questionScore = questionScore;
    }

    public String getQuestionAnswer() {
        return questionAnswer;
    }

    public void setQuestionAnswer(String questionAnswer) {
        this.questionAnswer = questionAnswer;
    }

    public Integer getTeacherId() {
        return teacherId;
    }

    public void setTeacherId(Integer teacherId) {
        this.teacherId = teacherId;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    @Override
    public String toString() {
        return "Question [id=" + id + ", profession=" + profession + ", questionType=" + questionType
                + ", degreeOfDifficulty=" + degreeOfDifficulty + ", questionContent=" + questionContent
                + ", questionScore=" + questionScore + ", questionAnswer=" + questionAnswer + ", teacherId=" + teacherId
                + ", note=" + note + ", startTime=" + startTime + "]";
    }

}
