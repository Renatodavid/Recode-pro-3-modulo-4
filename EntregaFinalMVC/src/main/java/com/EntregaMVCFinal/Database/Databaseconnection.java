package com.EntregaMVCFinal.Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Databaseconnection {

	public static Connection connection;
	
	 
		

			private static final String url = "jdbc:mysql://localhost:3306/agenciaviagensfinal";

			private static final String user = "renatodavid";

			private static final String password = "sff1jsff1j";

			public static Connection createConnection() {

				try {
					Class.forName("com.mysql.cj.jdbc.Driver");
					System.out.println("Driver encontrado!");

				} catch (ClassNotFoundException e) {
					System.out.printf("Driver nao encontrado! Mensagem: ");
				}

				try {
					Connection connection = DriverManager.getConnection(url, user, password);
					System.out.println("Conectado com sucesso!");

					return connection;
				} catch (SQLException e) {
					System.out.printf(" Nao foi possivel conectar ao banco! Mensagem: ");
					return null;
				}
	  
	  }
}
		

