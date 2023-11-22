package com.admin.servlet;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ItemDAOImpl;
import com.DB.DBConnect;
import com.entity.ItemDtls;

@WebServlet("../edititems")
public class EditItemsServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			String itemName=req.getParameter("itemName");
			String brand=req.getParameter("brand");
			String price=req.getParameter("price");
			String category=req.getParameter("category");
			String status=req.getParameter("status");
			
			ItemDtls i=new ItemDtls() ;
			i.setItemID(id);
			i.setItemName(itemName);
			i.setBrand(brand);
			i.setPrice(price);
			i.setStatus(status);
			
			ItemDAOImpl dao=new ItemDAOImpl(DBConnect.getConn());
			boolean f=dao.updateEditItems(i);
			
			HttpSession session=req.getSession();
			
			if(f) {
				session.setAttribute("succMsg", "Book Update Successfully..");
				resp.sendRedirect("admin/all_items.jsp");
			}else {
				session.setAttribute("failedMsg", "Something wrong on server");
				resp.sendRedirect("admin/all_items.jsp");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
}
