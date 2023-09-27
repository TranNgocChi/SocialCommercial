
package Model;

import java.util.UUID;

/**
 *
 * @author DELL
 */
public class User {
    UUID id;
    String name,password,email,number,country,province,district,town,location,image;
    int roleid;
    String fullname,gender,statusNow,school,favour,bio;

    public User(UUID id, String name, String email, int roleid) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.roleid = roleid;
    }

    public User(UUID id, String name, String password, String email, int roleid) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.email = email;
        this.roleid = roleid;
    }

    public User(String name, String password, String email, int roleid) {
        this.name = name;
        this.password = password;
        this.email = email;
        this.roleid = roleid;
    }

    public User(UUID id, String name, String email, String number, String country, String province, String district, String town, String location, int roleid, String image) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.number = number;
        this.country = country;
        this.province = province;
        this.district = district;
        this.town = town;
        this.location = location;
        this.roleid = roleid;
        this.image = image;
    }

    public User() {
    }

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }



    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    
    public int getRoleid() {
        return roleid;
    }

    public void setRoleid(int roleid) {
        this.roleid = roleid;
    }
    
    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getStatusNow() {
        return statusNow;
    }

    public void setStatusNow(String statusNow) {
        this.statusNow = statusNow;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getFavour() {
        return favour;
    }

    public void setFavour(String favour) {
        this.favour = favour;
    }

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }

    public User(UUID id, String number, String image, int roleid, String fullname, String gender, String statusNow, String school, String favour, String bio) {
        this.id = id;
        this.number = number;
        this.image = image;
        this.roleid = roleid;
        this.fullname = fullname;
        this.gender = gender;
        this.statusNow = statusNow;
        this.school = school;
        this.favour = favour;
        this.bio = bio;
    }//update profile

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", name=" + name + ", password=" + password + ", email=" + email + ", number=" + number + ", country=" + country + ", province=" + province + ", district=" + district + ", town=" + town + ", location=" + location + ", roleid=" + roleid + '}';
    }
    
 
}