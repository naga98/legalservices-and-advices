
package Bean;


public class LogInBean {
    
    private String EmailId;
    private String Password;

    public LogInBean() {
    }

    
    public LogInBean(String EmailId, String Password) {
        this.EmailId = EmailId;
        this.Password = Password;
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

    @Override
    public String toString() {
        return "LogInBean{" + "EmailId=" + EmailId + ", Password=" + Password + '}';
    }
    
    
}
