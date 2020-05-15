package sr;
public class ReviewDoc 
{   private int slno;
    private String toEmaild;
    private String law;
    private String title;
    private String question;
    private String state;
    private String city;
    private String pincode;
    private String phone;
    private String fromEmailId;
    private String username;
    private String doc1;
    private String doc2;

    public ReviewDoc() {
    }

    public int getSlno() {
        return slno;
    }

    public void setSlno(int slno) {
        this.slno = slno;
    }

    public String getToEmaild() {
        return toEmaild;
    }

    public void setToEmaild(String toEmaild) {
        this.toEmaild = toEmaild;
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

    public String getFromEmailId() {
        return fromEmailId;
    }

    public void setFromEmailId(String fromEmailId) {
        this.fromEmailId = fromEmailId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getDoc1() {
        return doc1;
    }
    public void setDoc1(String doc1) 
    {   int i=doc1.lastIndexOf("\\");
        if(i>0)
        {
        String onlyFile=doc1.substring(i+1);
        System.out.println("i:\t"+i);
        System.out.println("String:\t"+onlyFile);
        this.doc1=onlyFile;
        }
        else
        this.doc1 = doc1;
    }

    public String getDoc2() {
        return doc2;
    }

    public void setDoc2(String doc2) {
        int i=doc2.lastIndexOf("\\");
        if(i>0)
        {
        String onlyFile=doc2.substring(i+1);
        System.out.println("i:\t"+i);
        System.out.println("String:\t"+onlyFile);
        this.doc2=onlyFile;
        }
        else
        this.doc2 = doc2;
    }

    @Override
    public String toString() {
        return "ReviewDoc{" + "slno=" + slno + ", toEmaild=" + toEmaild + ", law=" + law + ", title=" + title + ", question=" + question + ", state=" + state + ", city=" + city + ", pincode=" + pincode + ", phone=" + phone + ", fromEmailId=" + fromEmailId + ", username=" + username + ", doc1=" + doc1 + ", doc2=" + doc2 + '}';
    }
    
}
