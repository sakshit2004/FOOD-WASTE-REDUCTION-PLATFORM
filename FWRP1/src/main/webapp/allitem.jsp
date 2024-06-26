<%@ page import="java.util.List" %>
<%@ page import="com.FWRP.inventoryDAO" %>
<%@ page import="com.FWRP.inventoryDaoImpl" %>
<%@ page import="com.FWRP.inventory" %>

<%
    // Get the InventoryDAO instance
    inventoryDAO inventoryDAO = new inventoryDaoImpl();

    // Get the list of surplus inventory items
    List<com.FWRP.inventory> allItemsList = inventoryDAO.getAllItems();
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inventory</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px auto;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        tr:hover {
            background-color: #f2f2f2;
        }

        button {
            padding: 10px 20px;
            font-size: 14px;
            background-color: #ff9900;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #ffcc66;
        }

        form {
            display: inline;
            margin-right: 5px;
        }

        .center {
            text-align: center;
        }
    </style>
</head>
<body>
    <h1>Inventory</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Retailer ID</th>
            <th>Item Type</th>
            <th>Name</th>
            <th>Expiration Date</th>
            <th>Quantity</th>
            <th>Discounted Price</th>
            <th>Surplus</th>
            <th>Action</th>
        </tr>
        <% for (com.FWRP.inventory inventory : allItemsList) { %>
            <tr>
                <td><%= inventory.getInventoryId() %></td>
                <td><%= inventory.getRetailerId() %></td>
                <td><%= inventory.getItemType() %></td>
                <td><%= inventory.getName() %></td>
                <td><%= inventory.getExpirationDate() %></td>
                <td><%= inventory.getQuantity() %></td>
                <td><%= inventory.getDiscountedPrice() %></td>
                <td><%= inventory.isSurplus() ? "Yes" : "No" %></td>
                <td>
                    <form action="update_inventory" method="post">
                        <input type="hidden" name="inventoryId" value="<%= inventory.getInventoryId() %>">
                        <button type="submit">Update</button>
                    </form>
                    <form action="delete_inventory" method="post">
                        <input type="hidden" name="inventoryId" value="<%= inventory.getInventoryId() %>">
                        <button type="submit">Delete</button>
                    </form>
                </td>
            </tr>
        <% } %>
    </table>

    <div class="center">
        <form action="add_inventory" method="post">
<a href="add_inventory.jsp">
        <button type="button">Add Surplus Inventory</button>
    </a>        
    </form>
    </div>
</body>
</html>
