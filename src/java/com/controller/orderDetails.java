/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import com.Database.Database;
import com.object.GenericList;
import com.object.item;
import com.object.orderInfo;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author hp
 */
public class orderDetails extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        try {
            response.setContentType("text/html;charset=UTF-8");
            HttpSession session = request.getSession();
            Connection con = Database.getConnection();
            if(request.getParameter("action").equalsIgnoreCase("detail")){
                PreparedStatement ps = con.prepareStatement("select itemid,qty from orders where orderid="+request.getParameter("id"));
                ResultSet rs = ps.executeQuery();
                GenericList<item> orderDetails = new GenericList<>();
                GenericList<item> reference = (GenericList<item>) session.getAttribute("itemList");
                while(rs.next()){
                    for(item x:reference.list){
                        if(x.getId().equals(rs.getString("itemid"))){
                            x.setQty(rs.getInt("qty"));
                            orderDetails.setList(x);
                        }
                    }
                }
                request.setAttribute("orderid", request.getParameter("id"));
                request.setAttribute("phoneno", request.getParameter("phoneno"));
                request.setAttribute("orderDetails", orderDetails);
                request.getRequestDispatcher("orderDetails.jsp").forward(request, response);
            }
            else if(request.getParameter("action").equalsIgnoreCase("finish")){
                Statement st = con.createStatement();
                st.executeUpdate("update orderlogs set orderstatus = 'Finished' where orderid ="+request.getParameter("id"));
                response.sendRedirect("loadOrder");
            }
            else if(request.getParameter("action").equalsIgnoreCase("delete")){
                Statement st1 = con.createStatement();
                st1.executeUpdate("delete from orders where orderid ="+request.getParameter("id"));
                Statement st2 = con.createStatement();
                st1.executeUpdate("delete from orderlogs where orderid ="+request.getParameter("id"));
                response.sendRedirect("loadOrder");
            }
        } catch (SQLException ex) {
            out.print(ex.getMessage());
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
