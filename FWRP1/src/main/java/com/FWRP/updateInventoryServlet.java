package com.FWRP;


import java.io.IOException;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/update_inventory")
public class updateInventoryServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get the request parameters
        int inventoryId = Integer.parseInt(request.getParameter("inventoryId"));
        int retailerId = Integer.parseInt(request.getParameter("retailerId"));
        String itemType = request.getParameter("itemType");
        String name = request.getParameter("name");
        String expirationDate = request.getParameter("expirationDate");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        double discountedPrice = Double.parseDouble(request.getParameter("discountedPrice"));
        boolean surplus = Boolean.parseBoolean(request.getParameter("surplus"));

        inventoryDAO inventoryDAO = new inventoryDaoImpl();
        // Create a new Inventory object with the updated values
        inventory inventory = new inventory(inventoryId, retailerId, itemType, name, expirationDate, quantity, discountedPrice, surplus);

        inventoryDAO.updateInventory(inventory);
		response.sendRedirect("update_inventory.jsp");
		
		// GustavoAdami
    }
}