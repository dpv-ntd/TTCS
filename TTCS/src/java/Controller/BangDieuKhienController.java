/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DAL.BaiDoXeDAO;
import Model.BaiDoXe;
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
@WebServlet(name = "BangDieuKhienController", urlPatterns = {"/bang-dieu-khien"})
public class BangDieuKhienController extends HttpServlet {

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
            out.println("<title>Servlet BangDieuKhienController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BangDieuKhienController at " + request.getContextPath() + "</h1>");
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
        int Available = dao.available();
        int occupied = dao.occupied();
        int vehiclesNumberToday = dao.vehiclesNumberToday();
        int vehiclesNumberYesterday = dao.vehiclesNumberYesterday();
        int vehiclesNumberWeekend = dao.vehiclesNumberWeekend();
        int vehiclesNumberEver = dao.vehiclesNumberEver();
        request.setAttribute("Available", Available);
        request.setAttribute("occupied", occupied);
        request.setAttribute("vehiclesNumberToday", vehiclesNumberToday);
        request.setAttribute("vehiclesNumberYesterday", vehiclesNumberYesterday);
        request.setAttribute("vehiclesNumberWeekend", vehiclesNumberWeekend);
        request.setAttribute("vehiclesNumberEver", vehiclesNumberEver);
        request.getRequestDispatcher("Dashboard.jsp").forward(request, response);
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
