/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.Assignment6003.service;

import com.Assignment6003.dao.DBUtills;
import com.Assignment6003.dao.User;
import com.Assignment6003.model.User;
import com.google.gson.Gson;
//import com.yourpackage.dao.DBUtills;
//import com.yourpackage.model.User;
import java.sql.SQLException;
import java.util.List;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import com.google.gson.Gson;


public class UserService {
     @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response getUsers() {
        DBUtills utills = new DBUtills();
        List<com.Assignment6003.model.User> users = utills.getUsers(); // Assuming you have a method in DBUtils
        
        Gson gson = new Gson();
        return Response
                .status(200)
                .entity(gson.toJson(users))
                .build();
    }
    @GET
    @Path("{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getUser(@PathParam("id") int id) {
        DBUtills utills = new DBUtills();
        
       /* try {
            User user = utills.getUser(id); // Method to fetch a user by ID
            if (user == null) {
                return Response.status(404).build();
            } else {
                Gson gson = new Gson();
                List<User> us = null;
                return Response
                       .status(200)
                       .entity(gson.toJson(us))
                       .build();
            }
        } catch(SQLException e) {
             return Response
                    .status(500)
                    .build(); 
         } */
         return null;
    }
       @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response addUser(String json) {
        Gson gson = new Gson();
        User user = gson.fromJson(json, User.class);
        DBUtills utills = new DBUtills();
        boolean res = utills.addUser(user); // Method to insert a user into DB
        
        if (res) {
            return Response.status(201).build();
        } else {
            return Response.status(500).build();
        }
    }
    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    public Response updateUser(String json) {
        Gson gson = new Gson();
        User user = gson.fromJson(json, User.class);
        DBUtills utills = new DBUtills();
        boolean res = utills.updateUser(user); // Method to update user
        
        if (res) {
            return Response.status(200).build();
        } else {
            return Response.status(500).build();
        }
    }
    @DELETE
    @Path("{id}")
    public Response deleteUser(@PathParam("id") int id) {
        DBUtills utills = new DBUtills();
        boolean res = utills.deleteUser(id); // Method to delete user by ID
        
        if (res) {
            return Response.status(200).build();
        } else {
            return Response.status(500).build();
        }
    }
    
}
