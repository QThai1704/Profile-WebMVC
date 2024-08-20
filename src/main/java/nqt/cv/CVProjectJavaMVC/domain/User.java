package nqt.cv.CVProjectJavaMVC.domain;

import java.sql.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "users")
public class User {
    @Id
    private long id;
    private String fullName;
    private int age;
    private String address;
    private String email;
    private Date dateOfBirth;
    private String avatar;
    private String language;
    private String phoneNumber;
    private String candidate;
    private String gender;

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

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
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

    public User() {
    }

    public User(long id, String fullName, int age, String address, String email, Date dateOfBirth, String avatar,
            String language, String phoneNumber, String candidate, String gender) {
        this.id = id;
        this.fullName = fullName;
        this.age = age;
        this.address = address;
        this.email = email;
        this.dateOfBirth = dateOfBirth;
        this.avatar = avatar;
        this.language = language;
        this.phoneNumber = phoneNumber;
        this.candidate = candidate;
        this.gender = gender;
    }

    @Override
    public String toString() {
        return "User [id=" + id + ", fullName=" + fullName + ", age=" + age + ", address=" + address + ", email="
                + email + ", dateOfBirth=" + dateOfBirth + ", avatar=" + avatar + ", language=" + language
                + ", phoneNumber=" + phoneNumber + ", candidate=" + candidate + ", gender=" + gender + "]";
    }

}
