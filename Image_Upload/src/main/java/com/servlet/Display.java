package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/show")
public class Display extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		System.out.println("In do post method of Display Image servlet.");
		String img_id=req.getParameter("img_id");
		int id=Integer.parseInt(img_id);
		
		//getting database connection (jdbc code)
				Connection connection=null;
				int imgId=0;
				String imgFileName=null;
				try 
				{
					Class.forName("com.mysql.cj.jdbc.Driver");
					connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/imgdb","root","abc123");
					Statement stmt;
					String query="select * from imgtb";
					stmt=connection.createStatement();
					ResultSet rs=stmt.executeQuery(query);
					
					while(rs.next())
					{
						if(rs.getInt("img_id")==id)
						{
							imgId=rs.getInt("img_id");
							imgFileName=rs.getString("img_filename");
						}
					}
						
				}
				catch (Exception e)
				{
					System.out.println(e);
				}
				
				RequestDispatcher rd;
				req.setAttribute("id",String.valueOf(imgId));  //valueOf
				req.setAttribute("img",imgFileName);
				rd=req.getRequestDispatcher("displayimg.jsp");
				rd.forward(req, resp);

	}

}

