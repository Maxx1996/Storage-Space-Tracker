package controller;
import java.sql.*;
public class ConnectData {
	static String driver="com.ibm.db2.jcc.DB2Driver";
	static String url="jdbc:db2://localhost:50000/Storage";
	static String user="MAXX";
	static String pass="mayankmk67gupta";
	static Connection cn=null;
	
	public static Connection getCn(){
		try{
			Class.forName(driver);
			cn=DriverManager.getConnection(url,user,pass);
			
		}catch(Exception e){
			System.out.println(e);
		}
		return cn;
	}

}
