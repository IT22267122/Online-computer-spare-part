package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.ItemDAOImpl;
import com.DB.DBConnect;
import com.entity.ItemDtls;

@WebServlet("/add_items")
@MultipartConfig
public class ItemsAdd extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String itemName=req.getParameter("itemName");
			String brand=req.getParameter("brand");
			String price=req.getParameter("price");
			String category=req.getParameter("category");
			String status=req.getParameter("status");
			Part part=req.getPart("PostImgURL");
			String fileName=part.getSubmittedFileName();
			
			ItemDtls i=new ItemDtls(itemName,brand,price,category,status,fileName,"admin");
	
			ItemDAOImpl dao=new ItemDAOImpl(DBConnect.getConn());
			

			//String path=getServletContext().getRealPath("");

			
			
			  System.out.println(i);		
			  boolean f=dao.addItems(i);
			  
			  HttpSession session=req.getSession();
			  
			  if(f) { 
			  session.setAttribute("succMsg", "Item add Sucessfully");
			  resp.sendRedirect("admin/add_items.jsp"); 
			  }else { 
			  
			  session.setAttribute("failedMsg", "Something wrong on server");
			  resp.sendRedirect("admin/add_items.jsp"); }
	
				 
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
}
