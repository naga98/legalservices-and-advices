
package sr;

import Bean.UserSignupBeen;
import DB.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class UserSignupServelet extends HttpServlet
{

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) 
        {
            String FullName=request.getParameter("FullName");
            String Mobileno=request.getParameter("Mobileno");
            String EmailId=request.getParameter("EmailId");
            String Password=request.getParameter("Password");
            String City=request.getParameter("City");
            String Address=request.getParameter("Address");
            String gender=request.getParameter("gender");
            String remember=request.getParameter("remember");
        
            UserSignupBeen ub = new UserSignupBeen();
            out.println(ub);
            ub.setFullName(FullName);
            ub.setMobileno(Mobileno);
            ub.setEmailId(EmailId);
            ub.setPassword(Password);
            ub.setCity(City);
            ub.setAddress(Address);
            ub.setGender(gender);
            ub.setRemember(remember);
            DAO dao = new DAO();
             if(dao.addUser(ub))
            {
             response.sendRedirect("UserSignUp.jsp?msg=Successfully Registered");
             }else
             {
            response.sendRedirect("UserSignUp.jsp?msg=Failed To Register Try Again");
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
            throws ServletException, IOException 
    {
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