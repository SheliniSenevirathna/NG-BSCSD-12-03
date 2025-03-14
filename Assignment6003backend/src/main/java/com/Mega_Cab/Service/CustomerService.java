/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.Mega_Cab.Service;

import com.Mega_Cab.DAO.DBUtils;
import com.Mega_Cab.Model.Customer;
import java.sql.SQLException;
import java.util.List;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Path("/customers") // API base path changed to "customers"
public class CustomerService {
    
    // Get all customers
    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response getCustomers() {
        DBUtils utils = new DBUtils();
        List<Customer> customers = utils.getCustomers(); // Fetch all customers

        Gson gson = new Gson();
        return Response.status(200).entity(gson.toJson((Customer) customers)).build();
    }

    // Get customer by ID
    @GET
    @Path("{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getCustomer(@PathParam("id") int id) {
        DBUtils utils = new DBUtils();

        Customer customer = utils.getCustomer(id); // Fetch customer by ID
        if (customer == null) {
            return Response.status(404).build(); // Not found
        } else {
            Gson gson = new Gson();
            return Response.status(200).entity(gson.toJson(customer)).build();
        }
    }

    // Add new customer
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response addCustomer(String json) {
        Gson gson = new Gson();
        Customer customer = gson.fromJson(json, Customer.class);

        DBUtils utils = new DBUtils();
        boolean res = utils.addCustomer(customer); // Add customer to DB

        if (res) {
            return Response.status(201).entity("Customer added successfully").build();
        } else {
            return Response.status(500).entity("Failed to add customer").build();
        }
    }

    // Update customer details
    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    public Response updateCustomer(String json) {
        Gson gson = new Gson();
        Customer customer = gson.fromJson(json, Customer.class);

        DBUtils utils = new DBUtils();
        boolean res = utils.updateCustomer(customer); // Update customer in DB

        if (res) {
            return Response.status(200).entity("Customer updated successfully").build();
        } else {
            return Response.status(500).entity("Failed to update customer").build();
        }
    }

    // Delete customer by ID
    @DELETE
    @Path("{id}")
    public Response deleteCustomer(@PathParam("id") int id) {
        DBUtils utils = new DBUtils();
        boolean res = utils.deleteCustomer(id); // Delete customer from DB

        if (res) {
            return Response.status(200).entity("Customer deleted successfully").build();
        } else {
            return Response.status(500).entity("Failed to delete customer").build();
        }
    }
}