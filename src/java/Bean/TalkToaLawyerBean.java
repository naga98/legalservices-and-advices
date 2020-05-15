
package Bean;
public class TalkToaLawyerBean {
    private int slno;
    private String ToEmailid;
    private String law;
    private String title;
    private String question;
    private String state;
    private String city;
    private String pincode;
    private String phone;
    private String FromEmailid;
    private String username;

    public TalkToaLawyerBean() {
    }

    public int getSlno() {
        return slno;
    }

    public void setSlno(int slno) {
        this.slno = slno;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public TalkToaLawyerBean(int slno, String ToEmailid, String law, String title, String question, String state, String city, String pincode, String phone, String FromEmailid, String username) {
        this.slno = slno;
        this.ToEmailid = ToEmailid;
        this.law = law;
        this.title = title;
        this.question = question;
        this.state = state;
        this.city = city;
        this.pincode = pincode;
        this.phone = phone;
        this.FromEmailid = FromEmailid;
        this.username = username;
    }

   
    
    public String getToEmailid() {
        return ToEmailid;
    }

    public void setToEmailid(String ToEmailid) {
        this.ToEmailid = ToEmailid;
    }

    public String getLaw() {
        return law;
    }

    public void setLaw(String law) {
        this.law = law;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPincode() {
        return pincode;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getFromEmailid() {
        return FromEmailid;
    }

    public void setFromEmailid(String FromEmailid) {
        this.FromEmailid = FromEmailid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Override
    public String toString() {
        return "TalkToaLawyerBean{" + "slno=" + slno + ", ToEmailid=" + ToEmailid + ", law=" + law + ", title=" + title + ", question=" + question + ", state=" + state + ", city=" + city + ", pincode=" + pincode + ", phone=" + phone + ", FromEmailid=" + FromEmailid + ", username=" + username + '}';
    }

   
   
    
    
}
