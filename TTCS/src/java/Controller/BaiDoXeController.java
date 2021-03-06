/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAL.BaiDoXeDAO;
import Model.BaiDoXe;
import Model.ThongTinChiTiet;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author DPV
 */
@WebServlet(name = "BaiDoXeController", urlPatterns = {"/bai-do-xe"})
public class BaiDoXeController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet BaiDoXeController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BaiDoXeController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        BaiDoXeDAO dao = new BaiDoXeDAO();
        String action = request.getParameter("action");
        String Ma_bai_do_xe = request.getParameter("id");
        if (action != null && action.equals("viewdetails")) {
            ThongTinChiTiet ThongTinChiTiet = dao.ThongTinChiTiet(Ma_bai_do_xe);
            BaiDoXe BaiDoXeByID = dao.getBaiDoXeByID(Ma_bai_do_xe);
            request.setAttribute("BaiDoXeByID", BaiDoXeByID);
            request.setAttribute("ThongTinChiTiet", ThongTinChiTiet);
            
            request.getRequestDispatcher("DetailsParkingSlot.jsp").forward(request, response);
            return;
        } else {
            ArrayList<BaiDoXe> BaiDoXe = dao.getBaiDoXe();
            request.setAttribute("BaiDoXe", BaiDoXe);
            request.getRequestDispatcher("ParkingSlot.jsp").forward(request, response);
        }

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
