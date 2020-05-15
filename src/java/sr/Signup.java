package sr;

import Bean.SignupBean;
import DB.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Signup extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
    String FullName =request.getParameter("FullName");
    String Mobileno = request.getParameter("Mobileno");
    String EmailId = request.getParameter("EmailId");
    String Password = request.getParameter("Password");
    String AreaofLaw = request.getParameter("AreaofLaw");
    String Experience = request.getParameter("Experience");
    String City = request.getParameter("City");
    String Gender = request.getParameter("gender");
    String Remember = request.getParameter("remember");
    
    SignupBean sb = new SignupBean();
    out.println(sb);
    sb.setFullName(FullName);
    sb.setMobileno(Mobileno);
    sb.setEmailId(EmailId);
    sb.setPassword(Password);
    sb.setAreaofLaw(AreaofLaw);
    sb.setExperience(Experience);
    sb.setCity(City);
    sb.setGender(Gender);
    sb.setRemember(Remember);
    DAO dao = new DAO();
    if(dao.addLawyer(sb))
    {
        response.sendRedirect("SignUp.jsp?msg=Success");
    }else
    {
        response.sendRedirect("SignUp.jsp?msg=Failed");
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
