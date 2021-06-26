package br.com.caelum.agenda;

import java.sql.*;

public class ConnectionFactory {

	public Connection getConnection() {
		try {
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/fj21?serverTimezone=UTC", "root", "51712");
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
