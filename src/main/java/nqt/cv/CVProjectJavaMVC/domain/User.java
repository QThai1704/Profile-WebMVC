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
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String fullName;
    private String address;
    private String email;
    private Date dateOfBirth;
    private String avatar;
    private String language;
    private String phoneNumber;
    private String candidate;
    private String gender;
    private String password;

    @ManyToOne
    @JoinColumn(name = "roles")
    private Role role;

    @OneToMany(mappedBy = "user")
    private List<Skill> skills;

    @OneToMany(mappedBy = "user")
    private List<Achievement> achievements;

    @OneToMany(mappedBy = "user")
    private List<Experience> experiences;

    @OneToMany(mappedBy = "user")
    private List<Portifolio> portifolios;

    @OneToMany(mappedBy = "user")
    private List<Society> societies;

    @OneToMany(mappedBy = "user")
    private List<Target> targets;

}
