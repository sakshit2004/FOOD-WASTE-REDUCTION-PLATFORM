package com.FWRP;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class inventoryDaoImpl implements inventoryDAO {

    // JDBC connection parameters
    private static final String URL = "jdbc:mysql://localhost:3306/fwrp";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "Sakshit@420";

    @Override
    public List<inventory> getAllInventory() {
        List<inventory> surplusInventoryList = new ArrayList<>();
        String sql = "SELECT * FROM INVENTORY WHERE Surplus = true";

        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                inventory inventory = new inventory();
                inventory.setInventoryId(resultSet.getInt("Inventory_ID"));
                inventory.setRetailerId(resultSet.getInt("Retailer_ID"));
                inventory.setItemType(resultSet.getString("Item_Type"));
                inventory.setName(resultSet.getString("Name"));
                inventory.setExpirationDate(resultSet.getString("Expiration_Date"));
                inventory.setQuantity(resultSet.getInt("Quantity"));
                inventory.setDiscountedPrice(resultSet.getBigDecimal("Discounted_Price").doubleValue());
                inventory.setSurplus(resultSet.getBoolean("Surplus"));

                surplusInventoryList.add(inventory);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return surplusInventoryList;
    }

    @Override
    public void addInventory(inventory inventory) {
        String sql = "INSERT INTO INVENTORY (Retailer_ID, Item_Type, Name, Expiration_Date, Quantity, Discounted_Price, Surplus) VALUES (?, ?, ?, ?, ?, ?, ?)";

        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setInt(1, inventory.getRetailerId());
            statement.setString(2, inventory.getItemType());
            statement.setString(3, inventory.getName());
            statement.setString(4, inventory.getExpirationDate());
            statement.setInt(5, inventory.getQuantity());
            statement.setBigDecimal(6, new java.math.BigDecimal(inventory.getDiscountedPrice()));
            statement.setBoolean(7, inventory.isSurplus());

            statement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateInventory(inventory inventory) {
        String sql = "UPDATE INVENTORY SET Retailer_ID = ?, Item_Type = ?, Name = ?, Expiration_Date = ?, Quantity = ?, Discounted_Price = ?, Surplus = ? WHERE Inventory_ID = ?";

        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setInt(1, inventory.getRetailerId());
            statement.setString(2, inventory.getItemType());
            statement.setString(3, inventory.getName());
            statement.setString(4, inventory.getExpirationDate());
            statement.setInt(5, inventory.getQuantity());
            statement.setBigDecimal(6, new java.math.BigDecimal(inventory.getDiscountedPrice()));
            statement.setBoolean(7, inventory.isSurplus());
            statement.setInt(8, inventory.getInventoryId());

            statement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteInventory(int inventoryId) {
        String sql = "DELETE FROM INVENTORY WHERE Inventory_ID = ?";

        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setInt(1, inventoryId);

            statement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    
    @Override
    public List<inventory> getAllItems() {
        List<inventory> allItemsList = new ArrayList<>();
        String sql = "SELECT * FROM INVENTORY";

        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                inventory item = new inventory();
                item.setInventoryId(resultSet.getInt("Inventory_ID"));
                item.setRetailerId(resultSet.getInt("Retailer_ID"));
                item.setItemType(resultSet.getString("Item_Type"));
                item.setName(resultSet.getString("Name"));
                item.setExpirationDate(resultSet.getString("Expiration_Date"));
                item.setQuantity(resultSet.getInt("Quantity"));
                item.setDiscountedPrice(resultSet.getBigDecimal("Discounted_Price").doubleValue());
                item.setSurplus(resultSet.getBoolean("Surplus"));

                allItemsList.add(item);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return allItemsList;
    }
	@Override
    public inventory getInventoryById(int inventoryId) {
        inventory inventory = null;
        String sql = "SELECT * FROM INVENTORY WHERE Inventory_ID = ?";

        try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setInt(1, inventoryId);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                inventory = new inventory();
inventory.setInventoryId(resultSet.getInt("Inventory_ID"));
                inventory.setRetailerId(resultSet.getInt("Retailer_ID"));
                inventory.setItemType(resultSet.getString("Item_Type"));
                inventory.setName(resultSet.getString("Name"));
                inventory.setExpirationDate(resultSet.getString("Expiration_Date"));
                inventory.setQuantity(resultSet.getInt("Quantity"));
                inventory.setDiscountedPrice(resultSet.getBigDecimal("Discounted_Price").doubleValue());
                inventory.setSurplus(resultSet.getBoolean("Surplus"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return inventory;
    }


}