/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.object;

/**
 *
 * @author Richelle Juleanne
 */
public class Menu {
    protected int itemid;
    protected String itemname;
    protected double itemprice;
    protected String itemcategory;

    public Menu() {
    }

    public Menu(String itemname, double itemprice, String itemcategory) {
        super();
        this.itemname = itemname;
        this.itemprice = itemprice;
        this.itemcategory = itemcategory;
    }

    public Menu(int itemid, String itemname, double itemprice, String itemcategory) {
        super();
        this.itemid = itemid;
        this.itemname = itemname;
        this.itemprice = itemprice;
        this.itemcategory = itemcategory;
    }

    public int getItemid() {
        return itemid;
    }

    public void setItemid(int itemid) {
        this.itemid = itemid;
    }

    public String getItemname() {
        return itemname;
    }

    public void setItemname(String itemname) {
        this.itemname = itemname;
    }

    public double getItemprice() {
        return itemprice;
    }

    public void setItemprice(double itemprice) {
        this.itemprice = itemprice;
    }

    public String getItemcategory() {
        return itemcategory;
    }

    public void setItemcategory(String itemcategory) {
        this.itemcategory = itemcategory;
    }
    
    
}
