package nqt.cv.CVProjectJavaMVC.domain;

import java.sql.Date;
import java.time.LocalDate;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.FieldDefaults;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    long id;
    String fullName;
    String password;
    String address;
    String email;
    LocalDate dateOfBirth;
    String avatar;
    String language;
    String phoneNumber;
    String candidate;
    String gender;

    @ManyToOne
    @JoinColumn(name = "roles")
    Role role;

    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    List<Skill> skills;

    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    List<Achievement> achievements;

    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    List<Experience> experiences;

    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    List<Portfolio> portfolios;

    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    List<Society> societies;

    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    List<Target> targets;

}
