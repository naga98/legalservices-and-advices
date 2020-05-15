
package Bean;
public class UserSignupBeen {
          private   String FullName;
           private String Mobileno;
           private String EmailId;
           private String Password;
           private String City;
           private String Address;
           private String gender;
           private String remember;

    public UserSignupBeen() {
    }

    public UserSignupBeen(String FullName, String Mobileno, String EmailId, String Password, String City, String Address, String gender, String remember) {
        this.FullName = FullName;
        this.Mobileno = Mobileno;
        this.EmailId = EmailId;
        this.Password = Password;
        this.City = City;
        this.Address = Address;
        this.gender = gender;
        this.remember = remember;
    }

    public String getFullName() {
        return FullName;
    }

    public void setFullName(String FullName) {
        this.FullName = FullName;
    }

    public String getMobileno() {
        return Mobileno;
    }

    public void setMobileno(String Mobileno) {
        this.Mobileno = Mobileno;
    }

    public String getEmailId() {
        return EmailId;
    }

    public void setEmailId(String EmailId) {
        this.EmailId = EmailId;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getCity() {
        return City;
    }

    public void setCity(String City) {
        this.City = City;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getRemember() {
        return remember;
    }

    public void setRemember(String remember) {
        this.remember = remember;
    }

    @Override
    public String toString() {
        return "UserSignupBeen{" + "FullName=" + FullName + ", Mobileno=" + Mobileno + ", EmailId=" + EmailId + ", Password=" + Password + ", City=" + City + ", Address=" + Address + ", gender=" + gender + ", remember=" + remember + '}';
    }
           
           
    
}
