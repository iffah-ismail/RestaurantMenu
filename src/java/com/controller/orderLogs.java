/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import com.Database.Database;
import com.object.GenericList;
import com.object.item;
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
public class orderLogs extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        try {
            Connection con = Database.getConnection();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select orderid from orderlogs order by orderid desc limit 1");
            int orderid = 0;
            if(rs.next()){
                orderid=rs.getInt("orderid")+1;
                
            }
            else{
                orderid = 1001;
            }
            HttpSession session = request.getSession();
            PreparedStatement st1 = con.prepareStatement("insert into orderlogs values (?,?,?,?)");
            st1.setInt(1, orderid);
            st1.setString(2,"Preparing");
            st1.setString(3, request.getParameter("phoneno"));
            st1.setDouble(4, (double) session.getAttribute("totalAmount"));
            st1.executeUpdate();
            
            
            GenericList<item> orderList = (GenericList<item>) session.getAttribute("orderList");
            PreparedStatement st2 = con.prepareStatement("insert into orders values (?,?,?)");
            for(item x:orderList.list){
                st2.setInt(1, orderid);
                st2.setString(2, x.getId());
                st2.setInt(3, x.getQty());
                st2.executeUpdate();
            }
            
            session.removeAttribute("orderList");
            response.sendRedirect("loadMenu");
            
        } catch (SQLException ex) {
            Logger.getLogger(orderLogs.class.getName()).log(Level.SEVERE, null, ex);
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
