/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.object;

import com.Database.Database;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

public class MenuDAO {
    
    private static final String INSERT_ITEM_SQL = 
            "insert into menu values (?,?,?,?,?);";
    private static final String SELECT_ITEM_BY_ID = 
            "select * from menu where itemid = ?";
    private static final String SELECT_ALL_ITEMS =
            "select * from menu";
    private static final String DELETE_ITEM_SQL = 
            "delete from menu where itemid = ?";

    public MenuDAO(){}
       
    public void insertItem(item menu, InputStream is){
        try(Connection connection = Database.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_ITEM_SQL))
        {
            preparedStatement.setString(1, menu.getId());
            preparedStatement.setString(2, menu.getName());
            preparedStatement.setString(3, menu.getCategory());
            preparedStatement.setDouble(4, menu.getPrice());
            preparedStatement.setBlob(5, is);

            preparedStatement.executeUpdate();
            
        }
        catch(SQLException e)
        {
            
        }
    }
    
    public item selectItem(String itemid){
        item menu = new item();
        String is = "";
        try(Connection connection = Database.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ITEM_BY_ID);){
            preparedStatement.setString(1, itemid);
            ResultSet rs = preparedStatement.executeQuery();
            while(rs.next()){
                String id = rs.getString("itemid");
                String itemname = rs.getString("name");
                double itemprice = rs.getDouble("price");
                String itemcategory = rs.getString("category");
                Blob imageData = rs.getBlob("image");
                byte[] blobData = imageData.getBytes(1,(int)imageData.length());
                menu.setId(id);
                menu.setName(itemname);
                menu.setPrice(itemprice);
                menu.setCategory(itemcategory);
                menu.setImageData(Base64.getEncoder().encodeToString(blobData));
                menu.setContent("image/jpeg");
            }
            
        }
        catch(SQLException e){
            is = e.getMessage();
        }
        return menu;
    }
    
    public List<item> selectAllItems(){
        List <item> menu = new ArrayList<>();
        try(Connection connection = Database.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_ITEMS);){
            ResultSet rs  = preparedStatement.executeQuery();
            
            while(rs.next()){
                item newItem = new item();
                String itemid = rs.getString("itemid");
                String itemname = rs.getString("name");
                double itemprice = rs.getDouble("price");
                String itemcategory = rs.getString("category");
                Blob imageData = rs.getBlob("image");
                byte[] blobData = imageData.getBytes(1,(int)imageData.length());
                newItem.setId(itemid);
                newItem.setName(itemname);
                newItem.setPrice(itemprice);
                newItem.setCategory(itemcategory);
                newItem.setImageData(Base64.getEncoder().encodeToString(blobData));
                newItem.setContent("image/jpeg");
                menu.add(newItem);
            }
        }
        catch(SQLException e){
            printSQLException(e);
        }
        return menu; 
    }
    
    public boolean deleteItem(String itemid) throws SQLException{
        boolean rowDeleted=false;
        try(Connection connection = Database.getConnection();
            PreparedStatement statement = connection.prepareStatement(DELETE_ITEM_SQL);){
            statement.setString(1, itemid);
            rowDeleted = statement.executeUpdate()>0;
        }
        return rowDeleted;
    }
    
    public boolean updateItem(item menu, InputStream is, String reference) throws SQLException{
        boolean rowUpdated=false;
        String sql = (is!=null)?"update menu set name = ?, price = ?, category = ?, image=?, itemid = ? where itemid = ?;":
                "update menu set name = ?, price = ?, category = ?, itemid = ? where itemid = ?;";
        try(Connection connection = Database.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);){
            statement.setString(1, menu.getName());
            statement.setDouble(2, menu.getPrice());
            statement.setString(3, menu.getCategory());               
            if(is!=null){
                statement.setBlob(4, is);
                statement.setString(5, menu.getId());  
                statement.setString(6, reference);  
            }else{
                statement.setString(4, menu.getId());
                statement.setString(5, reference); 
            }   
            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }
    
    private void printSQLException(SQLException ex){
        for (Throwable e: ex){
            if(e instanceof SQLException){
            e.printStackTrace(System.err);
            System.err.println("SQLState: "+((SQLException) e).getSQLState());
            System.err.println("Error Code: "+((SQLException) e).getErrorCode());
            System.err.println("Message: "+ e.getMessage());
            Throwable t = ex.getCause();
            while(t != null){
                System.out.println("Cause: "+t);
                t = t.getCause();
            }
            }
        }
    }
    
}

