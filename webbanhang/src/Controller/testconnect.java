package Controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import DAO.DAO;
import Model.Account;

public class testconnect {
	public static void main(String[] args) throws SQLException {
		Connection c=ConnectSQL.getConnection(); 		
		System.out.println(c);
	}
}
