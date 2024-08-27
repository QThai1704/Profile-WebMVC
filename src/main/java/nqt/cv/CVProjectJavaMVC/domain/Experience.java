package nqt.cv.CVProjectJavaMVC.domain;

import java.sql.Date;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "experiences")
public class Experience {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String startDate;
    private String endDate;
    private String company;
    private String position;
    private String description;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    public Experience() {
    }

    public Experience(long id, String startDate, String endDate, String company, String position, String description) {
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

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
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
