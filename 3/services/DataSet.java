package com.sjrwmd.wqcs.services;

import com.sjrwmd.sjrlib.service.ConfigService;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DataSet {
    
    
    public static String fetchData(){
        
        
            Connection connection = null;
            Statement statement =  null;
            ResultSet resultset = null;
            
        String customer = null;

            try{
                String dataSrcNm = ConfigService.getInstance().getAttributeString("wqcs", "appEnv", "datasource");
                String user = ConfigService.getInstance().getAttributeString("wqcs", "appEnv", "username");
                String pswd = ConfigService.getInstance().getAttributeString("wqcs", "appEnv", "password");
                
                Class.forName("oracle.jdbc.driver.OracleDriver");
                
                connection = DriverManager.getConnection(dataSrcNm, user, pswd);
                statement = connection.createStatement();
                
                resultset = statement.executeQuery("select a.orderid, a.customercontact, a.projectid, a.employeeid," +
                    "a.orderdate, a.defaultreceivedate, a.commnt, b.samplenumber, b.site from smsu.orders@prod a," +
                    "smsu.orderdetails@prod b where a.orderid = b.orderid and a.orderdate >= to_date('01-JUL-2015','dd-MON-yyyy') and a.signoff = 0");

                

                              
                while(resultset.next()){
                    customer =resultset.getString("CUSTOMERCONTACT");
                    System.out.println(customer);
                }
               
                
            } catch  (Exception t) {
                t.printStackTrace();
                System.out.println("Exception caught");
            } 
        /*    finally {
                try{
                    statement.close();
                    connection.commit();
                    connection.close();    
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
*/
      return customer;
    }
    
}
