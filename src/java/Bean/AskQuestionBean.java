
package Bean;

public class AskQuestionBean {
    private int slno;
    private String email;
    private String law;
    private String title;
    private String question;
    private String state;
    private String city;
    private String pincode;
    private String phone;
    
    public AskQuestionBean() {
    }

    public int getSlno() {
        return slno;
    }

    public void setSlno(int slno) {
        this.slno = slno;
    }

   
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public AskQuestionBean(int slno, String email, String law, String title, String question, String state, String city, String pincode, String phone) {
        this.slno = slno;
        this.email = email;
        this.law = law;
        this.title = title;
        this.question = question;
        this.state = state;
        this.city = city;
        this.pincode = pincode;
        this.phone = phone;
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

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
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

    @Override
    public String toString() {
        return "AskQuestionBean{" + "slno=" + slno + ", email=" + email + ", law=" + law + ", title=" + title + ", question=" + question + ", state=" + state + ", city=" + city + ", pincode=" + pincode + ", phone=" + phone + '}';
    }

   
   
    
    
}
