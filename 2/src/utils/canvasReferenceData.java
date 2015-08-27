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


public class canvasReferenceData {

	
	public static void main(String[] args) throws IOException {
        String sampleXml = null;
        String instrumentXml = null;
        String stationXml = null;
        //xmlstring = readFile(fileloc);
        sampleXml=querySample();
        postReferenceData(sampleXml);
        instrumentXml=queryInstrument();
        postReferenceData(instrumentXml);
	stationXml=queryStation();
        postReferenceData(stationXml);
        }
        
        
        static String querySample() {
            Connection connection = null;
            Statement statement =  null;
            ResultSet resultset = null;
            String xmlString="<?xml version=\"1.0\" encoding=\"utf-8\"?><List Name=\"WQCS-Samplers\"><Columns><c>Location</c><c>Name</c><c>Initials</c><c>Agency</c></Columns><Rows>";

            try{
                String dataSrcNm = ConfigService.getInstance().getAttributeString("wqcs", "appEnv", "datasource");
                String user = ConfigService.getInstance().getAttributeString("wqcs", "appEnv", "username");
                String pswd = ConfigService.getInstance().getAttributeString("wqcs", "appEnv", "password");
                
                Class.forName("oracle.jdbc.driver.OracleDriver");
                
                connection = DriverManager.getConnection(dataSrcNm, user, pswd);
                statement = connection.createStatement();
                
                resultset = statement.executeQuery("SELECT * FROM WQCS_SAMPLERS");
                String name;
                String agency;
                String initials;
                String location;
                xmlString=xmlString+"<r><v>Palatka</v><v></v><v></v><v></v></r>";
                xmlString=xmlString+"<r><v>Apopka</v><v></v><v></v><v></v></r>";
                xmlString=xmlString+"<r><v>Groundwater</v><v></v><v></v><v></v></r>";
                xmlString=xmlString+"<r><v>PalmBay</v><v></v><v></v><v></v></r>";
                xmlString=xmlString+"<r><v>Volusia</v><v></v><v></v><v></v></r>";
                xmlString=xmlString+"<r><v>Suwannee</v><v></v><v></v><v></v></r>";
                while(resultset.next()){
                    name=resultset.getString("NAME");
                    initials=resultset.getString("INITIALS");
                    agency=resultset.getString("AGENCY");
                    location=resultset.getString("LOCATION");
                    xmlString=xmlString+"<r><v>"+location+"</v><v>"+name+"</v><v>"+initials+"</v><v>"+agency+"</v></r>";
            
                }
                xmlString=xmlString+"</Rows></List>";
                //System.out.println(xmlString); 
                
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
            return xmlString;
        }
        static String queryInstrument() {
            Connection connection = null;
            Statement statement =  null;
            ResultSet resultset = null;
            String xmlString="<?xml version=\"1.0\" encoding=\"utf-8\"?><List Name=\"WQCS-Instruments\"><Columns><c>Location</c><c>Serial Number</c></Columns><Rows>";
    
            try{
                String dataSrcNm = ConfigService.getInstance().getAttributeString("wqcs", "appEnv", "datasource");
                String user = ConfigService.getInstance().getAttributeString("wqcs", "appEnv", "username");
                String pswd = ConfigService.getInstance().getAttributeString("wqcs", "appEnv", "password");
                
                Class.forName("oracle.jdbc.driver.OracleDriver");
                
                connection = DriverManager.getConnection(dataSrcNm, user, pswd);
                statement = connection.createStatement();
                
                resultset = statement.executeQuery("SELECT * FROM WQCS_INSTRUMENTS");
                String serialNumber;
                String location;
                String type;
                while(resultset.next()){
                    if(resultset.getString("STATUS").equals("In Use")){
                        serialNumber=resultset.getString("SERIALNUM");
                        type=resultset.getString("TYPE");
                        location=resultset.getString("LOCATION");
                        xmlString=xmlString+"<r><v>"+location+"</v><v>"+type+" "+serialNumber+"</v></r>";
                    }
                    
            
                }
                xmlString=xmlString+"</Rows></List>";
//                System.out.println(xmlString); 
                
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
            return xmlString;
        }
        static String queryStation() {
            Connection connection = null;
            Statement statement =  null;
            ResultSet resultset = null;
            String xmlString="<?xml version=\"1.0\" encoding=\"utf-8\"?><List Name=\"WQCS-Stations\"><Columns><c>SubProject</c><c>Station</c></Columns><Rows>";
        
            try{
                String dataSrcNm = ConfigService.getInstance().getAttributeString("wqcs", "appEnv", "datasource");
                String user = ConfigService.getInstance().getAttributeString("wqcs", "appEnv", "username");
                String pswd = ConfigService.getInstance().getAttributeString("wqcs", "appEnv", "password");
                
                Class.forName("oracle.jdbc.driver.OracleDriver");
                
                connection = DriverManager.getConnection(dataSrcNm, user, pswd);
                statement = connection.createStatement();
                
                resultset = statement.executeQuery("SELECT * FROM WQCS_STATIONS");
                String subproject;
                String station;
                String description;
                while(resultset.next()){
                   subproject=resultset.getString("SUBPROJECT");
                   station=resultset.getString("STATION");
                   description=resultset.getString("DESCRIPTION");
                   xmlString=xmlString+"<r><v>"+subproject+"</v><v>"+station+" "+description+"</v></r>";
                             
                }
                xmlString=xmlString+"</Rows></List>";
                //System.out.println(xmlString); 
                
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
            return xmlString;
        }
        
        public static void postReferenceData(String xmlContents) {

            try{
                String referenceUrl = ConfigService.getInstance().getAttributeString("canvas", "url-config", "referenceUrl");
                String userName = ConfigService.getInstance().getAttributeString("canvas", "url-config", "username");
                String password = ConfigService.getInstance().getAttributeString("canvas", "url-config", "password");    

                              
                URL url = new URL(referenceUrl+"username=" + userName
                                    + "&password=" + password);
                HttpURLConnection connection = (HttpURLConnection) url.openConnection();
                connection.setRequestProperty("Content-Type", "application/xml");
                connection.setRequestMethod("POST");
                connection.setDoOutput(true);
                OutputStreamWriter out = new OutputStreamWriter(connection.getOutputStream());
    //            System.out.println(xmlContents);
                out.write(xmlContents);
                out.close();

                BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()));

                String decodedString;

                while ((decodedString = in.readLine()) != null) {
                        System.out.println(decodedString);
                }
                in.close();

            } catch (Throwable t) {
                    t.printStackTrace();
            }
	}
}