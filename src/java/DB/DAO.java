
package DB;

import Bean.*;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import sr.ReviewDoc;

public class DAO
{
    
  Connection con;
  public DAO()
  {
       try
       {
           Class.forName("com.mysql.jdbc.Driver");
           con = DriverManager.getConnection("jdbc:mysql://localhost:3306/LsLa","root","");
            out.println("Connection load ayindi chusuko");
       }
       catch(Exception ex)
       {
            ex.printStackTrace();
       }
  }
  public ArrayList<SignupBean> getLawyers(String law,String city)
  {
        ArrayList<SignupBean> lawyers=new ArrayList<SignupBean>();
        String query="select * from lawyerregistration where AreaofLaw='"+law+"' and city like '%"+city+"%'";
        try{
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery(query);
            while(rs.next())
            {
                //INSERT INTO `lawyerregistration`(`FullName`, `Mobileno`, `EmailId`, `Password`, `AreaofLaw`, `Experience`, `City`, `Gender`, `Remember`)
                SignupBean lawyer=new SignupBean();
                lawyer.setFullName(rs.getString("FullName"));
                lawyer.setMobileno(rs.getString("Mobileno"));
                lawyer.setEmailId(rs.getString("EmailId"));
                lawyer.setAreaofLaw(rs.getString("AreaofLaw"));
                lawyer.setExperience(rs.getString("Experience"));
                lawyer.setCity(rs.getString("City"));
                lawyer.setGender(rs.getString("Gender"));
                lawyers.add(lawyer);
            }
        }catch(Exception e)
        {
        }
        return lawyers;
  }
  public boolean addLawyer(SignupBean sb)
  {
      boolean flag = false;
      
      try
      {
          String cmd;
          cmd = "INSERT INTO `lawyerregistration`(`FullName`, `Mobileno`, `EmailId`, `Password`, `AreaofLaw`, `Experience`, `City`, `Gender`, `Remember`) VALUES (?,?,?,?,?,?,?,?,?)";
          PreparedStatement pstmt=con.prepareStatement(cmd);
          pstmt.setString(1, sb.getFullName());
          pstmt.setString(2, sb.getMobileno());
          pstmt.setString(3, sb.getEmailId());
          pstmt.setString(4, sb.getPassword());
          pstmt.setString(5, sb.getAreaofLaw());
          pstmt.setString(6, sb.getExperience());
          pstmt.setString(7, sb.getCity());
          pstmt.setString(8, sb.getGender());
          pstmt.setString(9, sb.getRemember());
          int r=pstmt.executeUpdate();
          if(r>0)
          {
              PreparedStatement pstmt2=con.prepareStatement("INSERT INTO `login` VALUES (?,?,?,?)");
              pstmt2.setString(1,sb.getEmailId());
              pstmt2.setString(2,sb.getPassword());

              pstmt2.setString(3,"lawyer");
              pstmt2.setString(4,"active");
              r=pstmt2.executeUpdate();
              flag=true;
              con.commit();
              con.setAutoCommit(true);
              
          }
              
          
        
      }catch(Exception ex)
      {
          ex.printStackTrace();
          try{
              con.rollback();
          }
          catch(SQLException se)
          {
              se.printStackTrace();
          }
      }
        return flag;
      
  }
  
  public boolean addUser(UserSignupBeen ub)
  {
      boolean flag = false;
      
      try
      {
          String cmd;
          cmd = "INSERT INTO `userregistration`(`FullName`, `Mobileno`, `Emailid`, `Password`, `City`, `Address`, `Gender`, `Remember`) VALUES (?,?,?,?,?,?,?,?)";
          PreparedStatement pstmt=con.prepareStatement(cmd);
          pstmt.setString(1, ub.getFullName());
          pstmt.setString(2, ub.getMobileno());
          pstmt.setString(3, ub.getEmailId());
          pstmt.setString(4, ub.getPassword());
          pstmt.setString(5, ub.getCity());
          pstmt.setString(6, ub.getAddress());
           pstmt.setString(7, ub.getGender());
          pstmt.setString(8, ub.getRemember());
          int r=pstmt.executeUpdate();
          if(r>0)
          {
              PreparedStatement pstmt2=con.prepareStatement("INSERT INTO `login` VALUES (?,?,?,?)");
              pstmt2.setString(1,ub.getEmailId());
              pstmt2.setString(2,ub.getPassword());
              pstmt2.setString(3,"user");
              pstmt2.setString(4,"active");
              r=pstmt2.executeUpdate();
              flag=true;
              con.commit();
              con.setAutoCommit(true);
              
          }
              
          
        
      }catch(Exception ex)
      {
          ex.printStackTrace();
          try{
              con.rollback();
          }
          catch(SQLException se)
          {
              se.printStackTrace();
          }
      }
        return flag;
      
  }
  
  public boolean askQuestion(AskQuestionBean askquestionbean)
  {
      boolean flag = false;
      out.println("Hai");
      try
      {
          String cmd;
          cmd = "INSERT INTO `askquestion`( `email`, `law`, `title`, `question`, `state`, `city`, `pincode`, `phone`) VALUES (?,?,?,?,?,?,?,?)";
          //out.println(cmd);
          PreparedStatement pstmt=con.prepareStatement(cmd);
          pstmt.setString(1, askquestionbean.getEmail());
          pstmt.setString(2, askquestionbean.getLaw());
          pstmt.setString(3, askquestionbean.getTitle());
          pstmt.setString(4, askquestionbean.getQuestion());
          pstmt.setString(5, askquestionbean.getState());
          pstmt.setString(6, askquestionbean.getCity());
          pstmt.setString(7, askquestionbean.getPincode());
          pstmt.setString(8, askquestionbean.getPhone());
          int r=pstmt.executeUpdate();
          if(r>0)
          {
            flag=true;   
          }
        
      }catch(Exception ex)
      {
          ex.printStackTrace();
      }
        return flag;
  }

    public boolean talkQuestion(TalkToaLawyerBean talktoalawyerbean)
  {
      boolean flag = false;
      out.println("Hai");
      try
      {
          String cmd;
          cmd = "INSERT INTO talkQuestion(ToEmailid,law,title,question,state,city,pincode,phone,FromEmailid,username) VALUES (?,?,?,?,?,?,?,?,?,?)";
          //out.println(cmd);
          PreparedStatement pstmt=con.prepareStatement(cmd);
          pstmt.setString(1, talktoalawyerbean.getToEmailid());
          pstmt.setString(2, talktoalawyerbean.getLaw());
          pstmt.setString(3, talktoalawyerbean.getTitle());
          pstmt.setString(4, talktoalawyerbean.getQuestion());
          pstmt.setString(5, talktoalawyerbean.getState());
          pstmt.setString(6, talktoalawyerbean.getCity());
          pstmt.setString(7, talktoalawyerbean.getPincode());
          pstmt.setString(8, talktoalawyerbean.getPhone());
          pstmt.setString(9, talktoalawyerbean.getFromEmailid());
          pstmt.setString(10, talktoalawyerbean.getUsername());
          int r=pstmt.executeUpdate();
          if(r>0)
          {
           flag=true;   
          }
      }catch(Exception ex)
      {
          ex.printStackTrace();
      }
        return flag;
  }
  public boolean submitDocs(ReviewDoc bean)
  {     boolean flag = false;
        try
        {
          String cmd;
          cmd = "INSERT INTO reviwdocs(ToEmailid,law,title,question,state,city,pincode,phone,FromEmailid,username,doc1,doc2) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
          PreparedStatement pstmt=con.prepareStatement(cmd);
          pstmt.setString(1, bean.getToEmaild());
          pstmt.setString(2, bean.getLaw());
          pstmt.setString(3, bean.getTitle());
          pstmt.setString(4, bean.getQuestion());
          pstmt.setString(5, bean.getState());
          pstmt.setString(6, bean.getCity());
          pstmt.setString(7, bean.getPincode());
          pstmt.setString(8, bean.getPhone());
          pstmt.setString(9, bean.getFromEmailId());
          pstmt.setString(10, bean.getUsername());
          pstmt.setString(11, bean.getDoc1());
          pstmt.setString(12, bean.getDoc2());
          int r=pstmt.executeUpdate();
          if(r>0)
          { flag=true;   
          }
      }catch(Exception ex)
      {
          ex.printStackTrace();
      }
        return flag;
  }
  
    
  public String loginCheck(LogInBean logInBean)
  {
      String desig=null;
          try {
              PreparedStatement pstmt=con.prepareStatement("SELECT `desig`, `status` FROM `login` WHERE emailid=? AND password=? AND status='active'");
              pstmt.setString(1,logInBean.getEmailId());
              pstmt.setString(2,logInBean.getPassword());
              ResultSet rs = pstmt.executeQuery();
              if(rs.next())
              {
                  desig=rs.getString("desig");
              }
              
              
          } catch (SQLException ex) {
              ex.printStackTrace();
          }
          return desig;     
  }
 public ArrayList<AskQuestionBean> getViewAskAQuestion()
  {
      //out.println("hi");
        ArrayList<AskQuestionBean> aq=new ArrayList<AskQuestionBean>();
        String query="SELECT * FROM askquestion";
        try{
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery(query);
            while(rs.next())
            {
                //out.println("hi");
                //INSERT INTO `lawyerregistration`(`FullName`, `Mobileno`, `EmailId`, `Password`, `AreaofLaw`, `Experience`, `City`, `Gender`, `Remember`)
                AskQuestionBean askquestion=new AskQuestionBean();
                askquestion.setSlno(rs.getInt("slno"));
                askquestion.setEmail(rs.getString("email"));
                askquestion.setLaw(rs.getString("law"));
                askquestion.setTitle(rs.getString("title"));
                askquestion.setQuestion(rs.getString("question"));
                askquestion.setState(rs.getString("state"));
                askquestion.setCity(rs.getString("city"));
                askquestion.setPincode(rs.getString("pincode"));
                askquestion.setPhone(rs.getString("phone"));
                aq.add(askquestion);
                
            }
        }catch(Exception e)
        {
        }
        return aq;
  }
 public ArrayList<TalkToaLawyerBean> getViewTalkToALawer(String userid)
  {
      //out.println("hi");
        ArrayList<TalkToaLawyerBean> tl=new ArrayList<TalkToaLawyerBean>();
        String query="SELECT * FROM `talkquestion` WHERE ToEmailid='"+userid+"'";
        try{
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery(query);
            while(rs.next())
            {
                //out.println("hi");
                //INSERT INTO `lawyerregistration`(`FullName`, `Mobileno`, `EmailId`, `Password`, `AreaofLaw`, `Experience`, `City`, `Gender`, `Remember`)
                TalkToaLawyerBean toaLawyerBean=new TalkToaLawyerBean();
                toaLawyerBean.setSlno(rs.getInt("slno"));
                toaLawyerBean.setToEmailid(rs.getString("ToEmailid"));
                toaLawyerBean.setLaw(rs.getString("law"));
                toaLawyerBean.setTitle(rs.getString("title"));
                toaLawyerBean.setQuestion(rs.getString("question"));
                toaLawyerBean.setState(rs.getString("state"));
                toaLawyerBean.setCity(rs.getString("city"));
                toaLawyerBean.setPincode(rs.getString("pincode"));
                toaLawyerBean.setPhone(rs.getString("phone"));
                toaLawyerBean.setFromEmailid(rs.getString("FromEmailid"));
                toaLawyerBean.setUsername(rs.getString("username"));
                tl.add(toaLawyerBean);
                
            }
        }catch(Exception e)
        {
        }
        return tl;
  }
 
 public ArrayList<ReviewDoc> getReviewDocs(String userid)
  {
        //out.println("hi");
        ArrayList<ReviewDoc> tl=new ArrayList<ReviewDoc>();
        String query="SELECT * FROM `reviwdocs` WHERE FromEmailid='"+userid+"'";
        try{
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery(query);
            while(rs.next())
            {   
                ReviewDoc toaLawyerBean=new ReviewDoc();
                toaLawyerBean.setSlno(rs.getInt("slno"));
                toaLawyerBean.setToEmaild(rs.getString("ToEmailid"));
                toaLawyerBean.setLaw(rs.getString("law"));
                toaLawyerBean.setTitle(rs.getString("title"));
                toaLawyerBean.setQuestion(rs.getString("question"));
                toaLawyerBean.setState(rs.getString("state"));
                toaLawyerBean.setCity(rs.getString("city"));
                toaLawyerBean.setPincode(rs.getString("pincode"));
                toaLawyerBean.setPhone(rs.getString("phone"));
                toaLawyerBean.setFromEmailId(rs.getString("FromEmailid"));
                toaLawyerBean.setUsername(rs.getString("username"));
                toaLawyerBean.setDoc1(rs.getString("doc1"));
                toaLawyerBean.setDoc2(rs.getString("doc2"));
                tl.add(toaLawyerBean);
            }
        }catch(Exception e)
        {
        }
        return tl;
  } 
  public ArrayList<ReviewDoc> getReviewDocsByAdmin(String userid)
  {     
        //out.println("hi");
        ArrayList<ReviewDoc> tl=new ArrayList<ReviewDoc>();
        String query="SELECT * FROM `reviwdocs` WHERE ToEmailid='"+userid+"'";
        try{
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery(query);
            while(rs.next())
            {   
                ReviewDoc toaLawyerBean=new ReviewDoc();
                toaLawyerBean.setSlno(rs.getInt("slno"));
                toaLawyerBean.setToEmaild(rs.getString("ToEmailid"));
                toaLawyerBean.setLaw(rs.getString("law"));
                toaLawyerBean.setTitle(rs.getString("title"));
                toaLawyerBean.setQuestion(rs.getString("question"));
                toaLawyerBean.setState(rs.getString("state"));
                toaLawyerBean.setCity(rs.getString("city"));
                toaLawyerBean.setPincode(rs.getString("pincode"));
                toaLawyerBean.setPhone(rs.getString("phone"));
                toaLawyerBean.setFromEmailId(rs.getString("FromEmailid"));
                toaLawyerBean.setUsername(rs.getString("username"));
                toaLawyerBean.setDoc1(rs.getString("doc1"));
                toaLawyerBean.setDoc2(rs.getString("doc2"));
                tl.add(toaLawyerBean);
            }
        }catch(Exception e)
        {
        }
        return tl;
  }
 
  
  public boolean responseaskquestion(int aqid,String laweremail,String useremail,String lawerresp)
  {
      boolean flag = false;
      out.println("Hai");
      try
      {
          String cmd;
          cmd = "INSERT INTO `responseaskqusetion`(`aqid`, `laweremail`, `useremail`, `response`) VALUES (?,?,?,?)";
          //out.println(cmd);
          PreparedStatement pstmt=con.prepareStatement(cmd);
          pstmt.setInt(1, aqid);
          pstmt.setString(2,laweremail );
          pstmt.setString(3, useremail);
          pstmt.setString(4,lawerresp);
          int r=pstmt.executeUpdate();
          if(r>0)
          {
            flag=true;   
          }
        
      }catch(Exception ex)
      {
          ex.printStackTrace();
      }
        return flag;
  }

 
 public boolean responsetalklawer(int tlid,String laweremail,String useremail,String lawerresp)
  {
      boolean flag = false;
      out.println("Hai");
      try
      {
          String cmd;
          cmd = "INSERT INTO `responsetalkquestion`(`tlid`, `laweremail`, `useremail`, `response`) VALUES (?,?,?,?)";
          //out.println(cmd);
          PreparedStatement pstmt=con.prepareStatement(cmd);
          pstmt.setInt(1, tlid);
          pstmt.setString(2,laweremail );
          pstmt.setString(3, useremail);
          pstmt.setString(4,lawerresp);
          int r=pstmt.executeUpdate();
          if(r>0)
          {
            flag=true;   
          }
        
      }catch(Exception ex)
      {
          ex.printStackTrace();
      }
        return flag;
  }
 public boolean responseToReviewDoc(int tlid,String laweremail,String useremail,String lawerresp)
  {
      boolean flag = false;
      out.println("Hai");
      try
      {
          String cmd;
          cmd = "INSERT INTO `response_to_reviewdocs`(`tlid`, `laweremail`, `useremail`, `response`) VALUES (?,?,?,?)";
          //out.println(cmd);
          PreparedStatement pstmt=con.prepareStatement(cmd);
          pstmt.setInt(1, tlid);
          pstmt.setString(2,laweremail );
          pstmt.setString(3, useremail);
          pstmt.setString(4,lawerresp);
          int r=pstmt.executeUpdate();
          if(r>0)
          {
            flag=true;   
          }
        
      }catch(Exception ex)
      {
          ex.printStackTrace();
      }
        return flag;
  }
 
   
  public ResultSet viewResponseAskQuestion(String userid)
  {
      //out.println("hi");
       ResultSet rs=null;
        String query="SELECT * FROM askquestion a,responseaskqusetion r,lawyerregistration l WHERE r.laweremail=l.Emailid AND a.email=r.useremail AND r.useremail='"+userid+"' AND a.slno=r.aqid  ";
        try{
            Statement stmt=con.createStatement();
             rs=stmt.executeQuery(query);
           
        }catch(Exception e)
        {
        }
        return rs;
  }
  
   public ResultSet viewResponseOfQuestionByQid(String qid)
  {
      //out.println("hi");
       ResultSet rs=null;
        String query="SELECT * FROM askquestion a,responseaskqusetion r,lawyerregistration l WHERE r.laweremail=l.Emailid AND a.email=r.useremail AND a.slno=r.aqid  and a.slno="+qid;
        try{
            Statement stmt=con.createStatement();
             rs=stmt.executeQuery(query);
           
        }catch(Exception e)
        {
        }
        return rs;
  }
  
  public ResultSet viewQuestions(String userid)
  {     
        ResultSet rs=null;
        String query="SELECT * FROM askquestion where email='"+userid+"'";
        try{
            Statement stmt=con.createStatement();
             rs=stmt.executeQuery(query);
           
        }catch(Exception e)
        {
        }
        return rs;
  }
  public ResultSet viewAskedTalks(String userid)
  {     
        ResultSet rs=null;
        String query="SELECT * FROM talkquestion where FromEmailid='"+userid+"'";
        try{
            Statement stmt=con.createStatement();
             rs=stmt.executeQuery(query);
           
        }catch(Exception e)
        {
        }
        return rs;
  }
  
  
 public ResultSet viewResponseTalkLawer(String userid)
  {
      //out.println("hi");
       ResultSet rs=null;
        String query="SELECT * FROM responsetalkquestion r,talkquestion t,lawyerregistration l WHERE r.laweremail=t.ToEmailid AND t.ToEmailid=l.Emailid AND r.tlid=t.slno AND r.useremail=t.FromEmailid AND t.FromEmailid='"+userid+"'";
        try{
            Statement stmt=con.createStatement();
             rs=stmt.executeQuery(query);
           
        }catch(Exception e)
        {
        }
        return rs;
  }
    
 public ResultSet viewResponseOfTalks(String qid)
  {
        //out.println("hi");
        ResultSet rs=null;
        String query="SELECT * FROM responsetalkquestion r,talkquestion t,lawyerregistration l WHERE r.laweremail=t.ToEmailid AND t.ToEmailid=l.Emailid AND r.tlid=t.slno AND r.useremail=t.FromEmailid and r.tlid="+qid;
        try{
            Statement stmt=con.createStatement();
             rs=stmt.executeQuery(query);
           
        }catch(Exception e)
        {
        }
        return rs;
  }
 
 public ResultSet viewResponseOfDocs(String qid)
  {
        //out.println("hi");
        ResultSet rs=null;
        String query="SELECT * FROM response_to_reviewdocs r,reviwdocs t,lawyerregistration l WHERE r.laweremail=t.ToEmailid AND t.ToEmailid=l.Emailid AND r.tlid=t.slno AND r.useremail=t.FromEmailid and r.tlid="+qid;
        System.out.println("Query:\t"+query);
        try{
             Statement stmt=con.createStatement();
             rs=stmt.executeQuery(query);
        }catch(Exception e)
        {   e.printStackTrace();
        }
        return rs;
  }
 
  
  
 
 
}  
  

