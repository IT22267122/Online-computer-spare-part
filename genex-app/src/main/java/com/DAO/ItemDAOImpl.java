package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.ItemDtls;

public class ItemDAOImpl implements ItemDAO{
	
	private Connection conn;
	
	public ItemDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}


	@Override
	public boolean addItems(ItemDtls i) {
		boolean f=false;
		try {
			String sql="insert into item_dtls(itemName,brand,price,category,status,photo,user_email) values(?,?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, i.getItemName());
			ps.setString(2, i.getBrand());
			ps.setString(3, i.getPrice());
			ps.setString(4, i.getCategory());
			ps.setString(5, i.getStatus());
			ps.setString(6, i.getPhoto());
			ps.setString(7, i.getuser_email());
			
			int p=ps.executeUpdate();
			
			if(p==1) {
				f=true;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return f;
	}


	@Override
	public List<ItemDtls> getAllItems() {
		
		List<ItemDtls> list=new ArrayList<ItemDtls>();
		ItemDtls i=null;
		
		try {
				String sql="select * from item_dtls";
				PreparedStatement ps=conn.prepareStatement(sql);
				
				ResultSet rs=ps.executeQuery();
				while(rs.next())
				{
					i=new ItemDtls();
					i.setItemID(rs.getInt(1));
					i.setItemName(rs.getString(2));
					i.setBrand(rs.getString(3));
					i.setPrice(rs.getString(4));
					i.setCategory(rs.getString(5));
					i.setStatus(rs.getString(6));
					i.setPhoto(rs.getString(7));
					i.setusername(rs.getString(8));
					list.add(i);
				}
			
			}
		catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}
	
}
