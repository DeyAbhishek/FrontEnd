package com.sjrwmd.wqcs.dao;

import com.sjrwmd.wqcs.dto.EventsDTO;

import com.sjrwmd.wqcs.utils.DBConnector;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EventsDAO {
    
    public Connection connection;
    public EventsDAO(){
        connection = DBConnector.getConnection();
    }
    
    public List<EventsDTO> getAllEvents() {
        List<EventsDTO> eventlist = new ArrayList<EventsDTO>();
        try{
            String str = "select a.orderid, a.customercontact, a.projectid, a.employeeid, a.orderdate, a.defaultreceivedate, a.commnt, b.samplenumber, b.site \n" + 
            "from smsu.orders@prod a, smsu.orderdetails@prod b where \n" + 
            "a.orderid = b.orderid and a.orderdate >= to_date('01-JUL-2015','dd-MON-yyyy') and a.signoff = 0";
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(str);
            while(rs.next()){
               EventsDTO events = new EventsDTO();
                events.setCommnt(rs.getString("commnt"));
                events.setCustomercontact(rs.getString("customercontact"));
                events.setDefaultreceive(rs.getString("defaultreceivedate"));
                events.setEmployeeid(rs.getString("employeeid"));
                events.setOrderdate(rs.getString("orderdate"));
                events.setOrderid(rs.getString("orderid"));
                events.setProjectid(rs.getString("projectid"));
                events.setSamplenumber(rs.getString("samplenumber"));
                events.setSite(rs.getString("site"));
                eventlist.add(events);
            }
            }
        
        
        catch(SQLException ex){
            ex.printStackTrace();            
        }
        
        return eventlist;
    }
}
