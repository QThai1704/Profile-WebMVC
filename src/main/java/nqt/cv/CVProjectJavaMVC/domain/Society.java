package nqt.cv.CVProjectJavaMVC.domain;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "societies")
public class Society {
    @Id
    private long id;
    private String name;
    private String link;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public Society(long id, String name, String link) {
        this.id = id;
        this.name = name;
        this.link = link;
    }

    public Society() {
    }

    @Override
    public String toString() {
        return "Society [id=" + id + ", name=" + name + ", link=" + link + "]";
    }
}
