package com.sjrwmd.wqcs.services;


import com.sjrwmd.wqcs.dao.EventsDAO;
import com.sjrwmd.wqcs.dto.EventsDTO;
import java.util.List;

    import javax.ws.rs.Consumes;
    import javax.ws.rs.DELETE;
    import javax.ws.rs.GET;
    import javax.ws.rs.POST;
    import javax.ws.rs.PUT;
    import javax.ws.rs.Path;
    import javax.ws.rs.PathParam;
    import javax.ws.rs.Produces;
    import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;


@Path("/Events")
    @Produces(MediaType.APPLICATION_JSON)
    @Consumes(MediaType.APPLICATION_JSON)
    public class EventService {

            @GET
            public List<EventsDTO> getAllStandards(){
           // public Response getAllEvents(){       
                    List<EventsDTO> lst = null;;
                    //ResponseBuilder response = null;
                    try{
                            EventsDAO dao = new EventsDAO();
                            
                            lst = dao.getAllEvents();
                      //      response = Response.ok(lst);
                    }
                    catch(Exception ex){
                            ex.printStackTrace();

                    }
                    
                    return lst;
            }
   /*        
            @POST   
            public List<Orders> addPerson(Orders standards){

                    EventsDAO dao = new EventsDAO();
                    try {
                            
                            
                       //  dao.addStandards(standards);

                            
                    } catch(Exception ex){
                            ex.printStackTrace();

                    }
                    
            //      return jsonResp;
                    return dao.getAllEvents();
            }
*/
            
//            @DELETE
//            @Path("/{chemicalID}")
//            public List<Standards> deleteStandard(@PathParam("chemicalID") String chemicalID){
//                    
//
//                    StandardsDAO dao = new StandardsDAO();
//                    try {
//                            
//                            
//                         dao.deleteStandards(chemicalID);
//                            jsonResp.setStatus("SUCCESS");
//                            //jsonResp.setObject("newStandards", newStandards);
//                            jsonResp.setMsg("New Standard has been added to the database.");
//                            
//                    } catch(Exception ex){
//                            ex.printStackTrace();
//                            jsonResp.setStatus("ERROR");
//                            jsonResp.setMsg(ex.getMessage());
//                    }
//                    
//            //      return jsonResp;
//                    return dao.getAllStandards();
//            }
//            
//            @PUT
//            @Path("/{chemicalID}")
//            public List<Standards> updateStandard(Standards standard){
//                    
//                    JSONResponse jsonResp = new JSONResponse();
//                    StandardsDAO dao = new StandardsDAO();
//                    try {
//                            
//                            
//                         dao.updateStandards(standard);
//                            jsonResp.setStatus("SUCCESS");
//                            //jsonResp.setObject("newStandards", newStandards);
//                            jsonResp.setMsg("Standard has been updated to the database.");
//                            
//                    } catch(Exception ex){
//                            ex.printStackTrace();
//                            jsonResp.setStatus("ERROR");
//                            jsonResp.setMsg(ex.getMessage());
//                    }
//                    
//            //      return jsonResp;
//                    return dao.getAllStandards();
//            }
    }
