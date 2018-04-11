package sqlbean;
import com.*;
import servlet.*;
import java.sql.*;

public class Connsql {
    public Connsql(){}
    //链接数据库
    String driver="org.gjt.mm.mysql.Driver";
    String uesr="root";
    String userPassword="wq123456789";
    String url="jdbc:mysql://localhost:3306/badminton";
    public Connection getConnection(){
    	Connection con=null;
		try
		{
			Class.forName(driver);
			con=DriverManager.getConnection(url,uesr,userPassword);
		}
		catch(Exception e)
		{
			
		}
		return con;
    }
}
