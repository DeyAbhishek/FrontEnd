package com.sjrwmd.wqcs.utils;

import com.sjrwmd.sjrlib.service.ConfigService;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConn {
   
               private static Connection connection = null;
              
            public static Connection getConnection(){
               

                try{
                    String dataSrcNm = ConfigService.getInstance().getAttributeString("", "", "");
                    String user = ConfigService.getInstance().getAttributeString("", "", "");
                    String pswd = ConfigService.getInstance().getAttributeString("", "", "");
                    
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    
                    connection = DriverManager.getConnection(dataSrcNm, user, pswd);  
                            }
                            catch (ClassNotFoundException e) {
                    e.printStackTrace();
                } catch (SQLException e) {
                    e.printStackTrace();
                } 
                    return connection;
                    }
            }
