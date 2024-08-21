package nqt.cv.CVProjectJavaMVC.domain;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "skills")
public class Skill {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String name;
    private int level;

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

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public Skill(long id, String name, int level) {
        this.id = id;
        this.name = name;
        this.level = level;
    }

    public Skill() {
    }

    @Override
    public String toString() {
        return "Skill [id=" + id + ", name=" + name + ", level=" + level + "]";
    }

}
