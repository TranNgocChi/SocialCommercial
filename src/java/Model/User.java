
package Model;


/**
 *
 * @author DELL
 */
public class User {
    Object id;
    String name,password,email,number,country,province,district,town,location,image;
    int roleid;

    public User(Object id, String name, String email, int roleid) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.roleid = roleid;
    }

    public User(Object id, String name, String password, String email, int roleid) {
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

    public User(Object id, String name, String email, String number, String country, String province, String district, String town, String location, int roleid, String image) {
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

    public Object getId() {
        return id;
    }

    public void setId(Object id) {
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

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getTown() {
        return town;
    }

    public void setTown(String town) {
        this.town = town;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
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

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", name=" + name + ", password=" + password + ", email=" + email + ", number=" + number + ", country=" + country + ", province=" + province + ", district=" + district + ", town=" + town + ", location=" + location + ", roleid=" + roleid + '}';
    }
    
 
}