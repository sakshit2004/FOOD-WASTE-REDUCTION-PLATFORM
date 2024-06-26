<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Inventory Item</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
    }

    h1 {
        text-align: center;
        margin-top: 30px;
    }

    form {
        max-width: 600px;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    table {
        width: 100%;
    }

    td {
        padding: 10px;
    }

    input[type="text"],
    input[type="date"],
    input[type="number"] {
        width: calc(100% - 20px);
        padding: 10px;
        font-size: 16px;
        border-radius: 4px;
        border: 1px solid #ccc;
    }

    input[type="submit"],
    input[type="reset"],
    input[type="button"] {
        padding: 10px 20px;
        font-size: 16px;
        color: #fff;
        background-color: #ff9900;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        margin-right: 10px;
    }

    input[type="submit"]:hover,
    input[type="reset"]:hover,
    input[type="button"]:hover {
        background-color: #ffcc66;
    }

</style>
</head>
<body>
    <h1>Add Inventory Item</h1>
    <form action="AddInventoryItemServlet" method="post">
        <table>
            <tr>
                <td>Inventory ID:</td>
                <td><input type="text" name="inventoryId" /></td>
            </tr>
            <tr>
                <td>Retailer ID:</td>
                <td><input type="text" name="retailerId" /></td>
            </tr>
            <tr>
                <td>Item Type:</td>
                <td><input type="text" name="itemType" /></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" /></td>
            </tr>
            <tr>
                <td>Expiration Date:</td>
                <td><input type="date" name="expirationDate" /></td>
            </tr>
            <tr>
                <td>Quantity:</td>
                <td><input type="number" name="quantity" /></td>
            </tr>
            <tr>
                <td>Discounted Price:</td>
                <td><input type="number" step="0.01" name="discountedPrice" /></td>
            </tr>
            <tr>
                <td>Surplus:</td>
                <td><input type="checkbox" name="surplus" value="true" /></td>
            </tr>
        </table>
        <div style="text-align: center;">
<input type="submit" value="Add Item" onclick="alert('Data added successfully')" />
            <input type="reset" value="Reset Form" /> <!-- Reset button -->
            <input type="button" value="Cancel" onclick="window.location.href='RetailerFirst.jsp'" /> <!-- Button to cancel and go back to inventory.jsp -->
        </div>
    </form>
</body>
</html>
