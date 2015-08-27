package com.sjrwmd.wqcs.utils;

import com.sjrwmd.sjrlib.service.ConfigService;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLXML;
import java.sql.Statement;

import javax.xml.bind.annotation.XmlType;


public class databaseQuery {

	
	public static void main(String[] args) throws IOException {
        
        queryEvents();
        
        }
        
        
        static void queryEvents() {
            Connection connection = null;
            Statement statement =  null;
            ResultSet resultset = null;

            try{
                String dataSrcNm = ConfigService.getInstance().getAttributeString("wqcs", "appEnv", "datasource");
                String user = ConfigService.getInstance().getAttributeString("wqcs", "appEnv", "username");
                String pswd = ConfigService.getInstance().getAttributeString("wqcs", "appEnv", "password");
                
                Class.forName("oracle.jdbc.driver.OracleDriver");
                
                connection = DriverManager.getConnection(dataSrcNm, user, pswd);
                statement = connection.createStatement();
                
                resultset = statement.executeQuery("select a.orderid, a.customercontact, a.projectid, a.employeeid, a.orderdate, a.defaultreceivedate, a.commnt, b.samplenumber, b.site from smsu.orders@prod a, smsu.orderdetails@prod b where a.orderid = b.orderid and a.orderdate >= to_date('01-JUL-2015','dd-MON-yyyy') and a.signoff = 0");

                String customer = null;

                              
                while(resultset.next()){
                    customer =resultset.getString("CUSTOMERCONTACT");
                    System.out.println(customer);
                }
                
                
            } catch  (Throwable t) {
                t.printStackTrace();
            } finally {
                try{
                    statement.close();
                    connection.commit();
                    connection.close();    
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        
}