package sr;

import Bean.LogInBean;
import DB.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

 
public class LoginCheck extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String EmailId=request.getParameter("EmailId");
            String Password=request.getParameter("Password");
            
            HttpSession session= request.getSession();
            session.setAttribute("userid", EmailId);
            
            LogInBean logInBean=new LogInBean();
            logInBean.setEmailId(EmailId);
            logInBean.setPassword(Password);
            //out.println(logInBean);
            DAO dao=new DAO();
            String desig =dao.loginCheck(logInBean);
            if(desig!=null)
            {
               
                if(desig.equalsIgnoreCase("user"))
                {
                        response.sendRedirect("UserHome.jsp");
                }
                else if(desig.equalsIgnoreCase("lawyer"))
                {
                        response.sendRedirect("LawyerHome.jsp");
                }
            }
            else
            {
                        response.sendRedirect("Login.jsp?msg=LoginFailed");
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
    