package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
	private static Connection conn = null;
	public static Connection getConn() throws ClassNotFoundException, SQLException{
        if(conn == null){
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/genex","root","1234");
            System.out.print("connected");
        }
        return conn;
    }
}
