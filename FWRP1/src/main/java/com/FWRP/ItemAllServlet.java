package com.FWRP;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/all-items")
public class ItemAllServlet extends HttpServlet {
    private inventoryDAO inventoryDao;

    @Override
    public void init() throws ServletException {
        inventoryDao = new inventoryDaoImpl();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<inventory> allItemsList = inventoryDao.getAllItems();
        request.setAttribute("allItemsList", allItemsList);
        request.getRequestDispatcher("/all-items.jsp").forward(request, response);
    }
}
