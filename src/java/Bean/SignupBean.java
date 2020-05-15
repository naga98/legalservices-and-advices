package Bean;
public class SignupBean {
   private String FullName;   
 private String Mobileno;   
 private String EmailId;  
 private String Password;   
 private String AreaofLaw;   
 private String Experience;
 private String City;
 private String Gender;
 private String Remember;

    public SignupBean() {
    }

    public SignupBean(String FullName, String Mobileno, String EmailId, String Password, String AreaofLaw, String Experience,String City, String Gender,String Remember) {
        this.FullName = FullName;
        this.Mobileno = Mobileno;
        this.EmailId = EmailId;
        this.Password = Password;
        this.AreaofLaw = AreaofLaw;
        this.Experience = Experience;
        this.City=City;
        this.Gender = Gender;
        this.Remember=Remember;
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

    public String getAreaofLaw() {
        return AreaofLaw;
    }

    public void setAreaofLaw(String AreaofLaw) {
        this.AreaofLaw = AreaofLaw;
    }

    public String getExperience() {
        return Experience;
    }

    public void setExperience(String Experience) {
        this.Experience = Experience;
    }

    public String getCity() {
        return City;
    }

    public void setCity(String City) {
        this.City = City;
    }
    

    public String getGender() {
        return Gender;
    }

    public void setGender(String Gender) {
        this.Gender = Gender;
    }

    public String getRemember() {
        return Remember;
    }

    public void setRemember(String Remember) {
        this.Remember = Remember;
    }

    @Override
    public String toString() {
        return "SignupBean{" + "FullName=" + FullName + ", Mobileno=" + Mobileno + ", EmailId=" + EmailId + ", Password=" + Password + ", AreaofLaw=" + AreaofLaw + ", Experience=" + Experience + ", City=" + City + ", Gender=" + Gender + ", Remember=" + Remember + '}';
    }
    

    
}
