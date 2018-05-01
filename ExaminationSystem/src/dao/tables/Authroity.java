package dao.tables;

public class Authroity {
    private Integer id;
    private Integer authorityId;
    private String authorityName;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getAuthorityId() {
        return authorityId;
    }

    public void setAuthorityId(Integer authorityId) {
        this.authorityId = authorityId;
    }

    public String getAuthorityName() {
        return authorityName;
    }

    public void setAuthorityName(String authorityName) {
        this.authorityName = authorityName;
    }

    @Override
    public String toString() {
        return "Authroity [id=" + id + ", authorityId=" + authorityId + ", authorityName=" + authorityName + "]";
    }

}
