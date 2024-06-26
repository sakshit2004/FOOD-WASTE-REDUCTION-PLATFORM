<%@ page import="java.util.List" %>
<%@ page import="com.FWRP.inventoryDAO" %>
<%@ page import="com.FWRP.inventoryDaoImpl" %>
<%@ page import="com.FWRP.inventory" %>
<% 


    // Get the inventory ID from the request parameters
    int inventoryId = Integer.parseInt(request.getParameter("id"));

    // Get the InventoryDAO instance
    inventoryDAO inventoryDAO = new inventoryDaoImpl();

    // Get the inventory item with the given ID
    inventory inventory = inventoryDAO.getInventoryById(inventoryId);
%>

<h1>Delete Inventory Item</h1>

<p>Are you sure you want to delete the following inventory item?</p>

<table>
    <tr>
        <th>ID:</th>
        <td><%= inventory.getInventoryId() %></td>
    </tr>
    <tr>
        <th>Retailer ID:</th>
        <td><%= inventory.getRetailerId() %></td>
    </tr>
    <tr>
        <th>Item Type:</th>
        <td><%= inventory.getItemType() %></td>
    </tr>
    <tr>
        <th>Name:</th>
        <td><%= inventory.getName() %></td>
    </tr>
    <tr>
        <th>Expiration Date:</th>
        <td><%= inventory.getExpirationDate() %></td>
    </tr>
    <tr>
        <th>Quantity:</th>
        <td><%= inventory.getQuantity() %></td>
    </tr>
    <tr>
        <th>Discounted Price:</th>
        <td><%= inventory.getDiscountedPrice() %></td>
    </tr>
    <tr>
        <th>Surplus:</th>
        <td><%= inventory.isSurplus() ? "Yes" : "No" %></td>
    </tr>
</table>

<form action="delete_inventory" method="post">
    <input type="hidden" name="id" value="<%= inventory.getInventoryId() %>">

    <button type="submit">Delete Inventory Item</button>
</form>