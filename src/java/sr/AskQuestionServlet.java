
package sr;

import Bean.AskQuestionBean;
import DB.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "AskQuestionServlet", urlPatterns = {"/AskQuestionServlet"})
public class AskQuestionServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
          String email=request.getParameter("email");
    String law =request.getParameter("law");
    String title = request.getParameter("title");
    String question = request.getParameter("question");
    String state = request.getParameter("state");
    String city = request.getParameter("city");
    String pincode = request.getParameter("pincode");
    String phone = request.getParameter("phone");
    out.println(email);
    
    
    
    AskQuestionBean askquestionbean = new AskQuestionBean();
    
    askquestionbean.setEmail(email);
    askquestionbean.setLaw(law);
    askquestionbean.setTitle(title);
    askquestionbean.setQuestion(question);
    askquestionbean.setState(state);
    askquestionbean.setCity(city);
    askquestionbean.setPincode(pincode);
    askquestionbean.setPhone(phone);

        out.println(askquestionbean);
   String cmd = "INSERT INTO `askquestion`(`law`, `title`, `question`, `state`, `city`, `pincode`,'phone') VALUES (?,?,?,?,?,?,?)";
   out.println(cmd);
  DAO dao = new DAO();
   if(dao.askQuestion(askquestionbean)==true)
  {
        response.sendRedirect("AskQuestion.jsp?msg=Success");
    }else
    {
        response.sendRedirect("AskQuestion.jsp?msg=Failed");
    }
   
    
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
