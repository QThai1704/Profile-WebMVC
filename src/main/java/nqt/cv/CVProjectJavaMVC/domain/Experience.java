package nqt.cv.CVProjectJavaMVC.domain;

import java.sql.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "experiences")
public class Experience {
    @Id
    private long id;
    private Date startDate;
    private Date endDate;
    private String company;
    private String position;
    private String description;

    public Experience() {
    }

    public Experience(long id, Date startDate, Date endDate, String company, String position, String description) {
        this.id = id;
        this.startDate = startDate;
        this.endDate = endDate;
        this.company = company;
        this.position = position;
        this.description = description;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Experience [id=" + id + ", startDate=" + startDate + ", endDate=" + endDate + ", company=" + company
                + ", position=" + position + ", description=" + description + "]";
    }

}
