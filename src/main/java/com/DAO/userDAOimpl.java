package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.entity.user;

public class userDAOimpl implements userDAO {
		
		private Connection conn;

		public userDAOimpl(Connection conn) {
			super();
			this.conn = conn;
		}

		@Override
		public boolean userRegister(user us) {
			boolean f = false ;
			
			try {
				String sql = "insert into user(name ,email,phno,password) values(?,?,?,?)";
				PreparedStatement ps=conn.prepareStatement(sql);
				ps.setString(1, us.getName());
				ps.setString(2, us.getEmail());
				ps.setString(3, us.getPhno());
				ps.setString(4, us.getPassword());
				
				int i =ps.executeUpdate();
				if(i==1) {
					f=true ;
				}
				
			} catch (SQLException e) {
			    System.out.println("SQL State: " + e.getSQLState());
			    System.out.println("Error Code: " + e.getErrorCode());
			    e.printStackTrace();
			}

			return f;
		}

		@Override
		public user login(String email, String password) {
			
			user us = null ;
			
			try {
				String sql="select * from user where email=? and password=?";
				PreparedStatement ps=conn.prepareStatement(sql);
				ps.setString(1, email);
				ps.setString(2, password);
				
			ResultSet rs= ps.executeQuery();
			while(rs.next()) {
				us=new user();
				us.setId(rs.getInt(1));
				us.setName(rs.getString(2));
				us.setEmail(rs.getString(3));
				us.setPhno(rs.getString(4));
				us.setPassword(rs.getString(5));
				us.setAdress(rs.getString(6));
				us.setLandmark(rs.getString(7));
				us.setCity(rs.getString(8));
				us.setState(rs.getString(9));
				us.setPincode(rs.getString(10));
				
			}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			return us;
		}
		
		
		
}
