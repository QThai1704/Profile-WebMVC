package nqt.cv.CVProjectJavaMVC.domain;

import java.sql.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

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

    @ManyToOne
    @JoinColumn(name = "skills")
    private Skill skill;

    @ManyToOne
    @JoinColumn(name = "achievements")
    private Achievement achievement;

    @ManyToOne
    @JoinColumn(name = "experiences")
    private Experience experience;

    @ManyToOne
    @JoinColumn(name = "portifolios")
    private Portifolio portifolio;

    @ManyToOne
    @JoinColumn(name = "societies")
    private Society society;

    @ManyToOne
    @JoinColumn(name = "targets")
    private Target target;


    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public Skill getSkill() {
        return skill;
    }

    public void setSkill(Skill skill) {
        this.skill = skill;
    }

    public Achievement getAchievement() {
        return achievement;
    }

    public void setAchievement(Achievement achievement) {
        this.achievement = achievement;
    }

    public Experience getExperience() {
        return experience;
    }

    public void setExperience(Experience experience) {
        this.experience = experience;
    }

    public Portifolio getPortifolio() {
        return portifolio;
    }

    public void setPortifolio(Portifolio portifolio) {
        this.portifolio = portifolio;
    }

    public Society getSociety() {
        return society;
    }

    public void setSociety(Society society) {
        this.society = society;
    }

    public Target getTarget() {
        return target;
    }

    public void setTarget(Target target) {
        this.target = target;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getCandidate() {
        return candidate;
    }

    public void setCandidate(String candidate) {
        this.candidate = candidate;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public User() {
    }

    public User(long id, String fullName, String address, String email, Date dateOfBirth, String avatar,
            String language, String phoneNumber, String candidate, String gender, String password) {
        this.id = id;
        this.fullName = fullName;
        this.address = address;
        this.email = email;
        this.dateOfBirth = dateOfBirth;
        this.avatar = avatar;
        this.language = language;
        this.phoneNumber = phoneNumber;
        this.candidate = candidate;
        this.gender = gender;
        this.password = password;
    }

    @Override
    public String toString() {
        return "User [id=" + id + ", fullName=" + fullName + ", address=" + address + ", email=" + email
                + ", dateOfBirth=" + dateOfBirth + ", avatar=" + avatar + ", language=" + language + ", phoneNumber="
                + phoneNumber + ", candidate=" + candidate + ", gender=" + gender + ", password=" + password + "]";
    }

}
