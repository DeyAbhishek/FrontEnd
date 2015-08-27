package com.sjrwmd.wqcs.utils;

import au.com.bytecode.opencsv.CSVReader;

import com.sjrwmd.sjrlib.service.ConfigService;

import java.io.BufferedReader;
import java.io.FileReader;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

import java.util.ArrayList;
import java.util.Date;

public class handheldUpload {
	
        private static ArrayList<String[]> finalArray = new ArrayList<String[]>();
        private static DateFormat format = new SimpleDateFormat("MM/dd/yyyy");

	
	public static void main(String[] args) {
		storeCSV();
	
	}
	

	 /**
	  * ReadCanvas method delivers an array "finalArray" containing the CSV data
	  */
	 public static void storeCSV() {
	         
	     try {
                 String fileloc="G:\\Converted\\EXOHH_DTL.SIT_120214_143832.TXT";
	         System.out.println("Full filepath coded as: " + fileloc);
	         
	         BufferedReader buffReader = new BufferedReader(new FileReader(fileloc));
	         CSVReader csvreader = new CSVReader(buffReader);
	         String[] myEntries;
	             
	         csvreader.readNext();//digest header
	         while (true){
	             myEntries = csvreader.readNext();
	             if (myEntries == null) break;
	             finalArray.add(myEntries);
	         }
	         buffReader.close();
	         csvreader.close();          
	         	        
	     } catch (Throwable t) {
	         t.printStackTrace();
	     }
	 }
         
    public static void writeDB() {
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
                        
            for (String[] entry:finalArray){
                String date=entry[1];
                String time=entry[2];
                String temp=entry[3];
                String condu=entry[4];
                String condm=entry[5];
                String spCondu=entry[6];
                String spCondm=entry[7];
                String sal=entry[8];
                String TDSg=entry[9];
                String TDSkg=entry[10];
                String depth=entry[11];
                String depthFeet=entry[12];
                //String psir=entry[13];
                String pressure=entry[14];
                String pH=entry[15];
                String pHmV=entry[16];
                //String nh3=entry[17];
                //String nh4=entry[18];
                //String nh4mv=entry[19];
                //String cl=entry[20];
                //String clmv=entry[21];
                //String no3=entry[22];
                //String no3mv=entry[23];
                String orpmV=entry[24];
                //String turbidplus=entry[25];
                //String turbid=entry[26];
                String odoSat=entry[27];
                String odomg=entry[28];
                String chlu=entry[29];
                String chlRFU=entry[30];
                String bgaPCrfu=entry[31];
                //String bgaPErfu=entry[32];
                String battery=entry[33];


                int sttsCd = 0;
                
                Date parsedActnDt = format.parse(date);
                java.sql.Date actnDt = new java.sql.Date(parsedActnDt.getTime());

                                
                //lookup rspns_ID and check for duplicates
                
                resultset = statement.executeQuery("SELECT count(*) from reguser.canvas_site_inspn where time = '"+time+"'");
                resultset.next();
                int duplicateCount = resultset.getInt(1);
                                
                if (duplicateCount>=1){
                
                    //System.out.println(rspnsID+" already exists!");
                    resultset.close();
                    continue;
                    
                } else {
                    
                    //Generate a key for wqcs_id_key
                    int wqcsIdKey=0;
                    resultset = statement.executeQuery("SELECT sjr.getkeyvalue('wqcs_id', 1) from dual");
                    while (resultset.next()){
                        wqcsIdKey = resultset.getInt(1);
                        break;
                    }
                    resultset.close();

                    //reguser.canvas_site_inspn
                    String sql ="sql string";
                    statement.executeUpdate(sql);
                                
                    
                    connection.commit();
                    resultset.close();
                }
            }                                   
        } catch (Exception z){
            z.printStackTrace();
            
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