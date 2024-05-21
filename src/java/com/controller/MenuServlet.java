/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.object.MenuDAO;
import com.object.item;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig(maxFileSize = 16177216)

public class MenuServlet extends HttpServlet {

    private MenuDAO menuDAO;
    PrintWriter out;
    @Override
    public void init() {
        menuDAO = new MenuDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        out = response.getWriter();
        try {
            if(action!=null){
                switch (action) {
                    case "new":
                        showNewForm(request, response);
                        break;
                    case "insert":
                        insertItem(request, response);
                        break;
                    case "delete":
                        deleteItem(request, response);
                        break;
                    case "edit":
                        showEditForm(request, response);
                        break;
                    case "update":
                        updateItem(request, response);
                        break;
                        
                }
            }
            else
                menu(request, response);
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

    private void menu(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        List<item> menu = menuDAO.selectAllItems();
        request.setAttribute("menu", menu);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Menu.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
             {
        try {
            request.setAttribute("item", null);
            RequestDispatcher dispatcher = request.getRequestDispatcher("ItemForm.jsp");
            dispatcher.forward(request, response);
        } catch (ServletException ex) {
            out.print(ex.getMessage());
        } catch (IOException ex) {
            Logger.getLogger(MenuServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
        
        String itemid = request.getParameter("itemid");
        
        item existingItem = menuDAO.selectItem(itemid);
        RequestDispatcher dispatcher = request.getRequestDispatcher("ItemForm.jsp");
        request.setAttribute("item", existingItem);
        dispatcher.forward(request, response);
    }

    private void insertItem(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        try {
            item newItem = new item();
            Part part = request.getPart("image");
            InputStream is = part.getInputStream();

            String itemid = request.getParameter("itemid");
            String itemname = request.getParameter("itemname");
            Double itemprice = Double.parseDouble(request.getParameter("itemprice"));
            String itemcategory = request.getParameter("itemcategory");

            newItem.setId(itemid);
            newItem.setName(itemname);
            newItem.setPrice(itemprice);
            newItem.setCategory(itemcategory);

            menuDAO.insertItem(newItem, is);
            response.sendRedirect("MenuServlet");
        } catch (ServletException ex) {
        }
    }

    private void updateItem(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        try {
            item newItem = new item();
            Part part = null;
            InputStream is = null;
            if(part != null && part.getSize() > 0){
                part = request.getPart("image");
                is = part.getInputStream();
            }
            
            String itemid = request.getParameter("itemid");
            String itemname = request.getParameter("itemname");
            double itemprice = Double.parseDouble(request.getParameter("itemprice"));
            String itemcategory = request.getParameter("itemcategory");
            
            newItem.setId(itemid);
            newItem.setName(itemname);
            newItem.setPrice(itemprice);
            newItem.setCategory(itemcategory);
            
            menuDAO.updateItem(newItem,is,request.getParameter("reference"));
            response.sendRedirect("MenuServlet");
        } catch (ServletException ex) {
            out.print(ex.getMessage());
        }
    }

    private void deleteItem(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException {
        String itemid = request.getParameter("itemid");
        menuDAO.deleteItem(itemid);
        response.sendRedirect("MenuServlet");
    }
}
