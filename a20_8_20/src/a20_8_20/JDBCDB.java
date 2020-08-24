package a20_8_20;

import java.sql.Connection;
import java.sql.DriverManager;

public class JDBCDB {
	String driver="oracle.jdbc.OracleDriver";	
	String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
	String user = "system";
	String password="123456";
	//밖에서 써야해서 공유하기위해 static으로 해줌 
	public static Connection conn = null;
	
	public JDBCDB() {//생성자
		try {
			Class.forName(driver);	//외부에 저장된 class 파일(드라이버클래스)을 현재페이지로 가져옴
			conn = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//밖에서 써야해서 공유하기위해 static으로 해줌 
	//왜이렇게 하는거징?
	public static JDBCDB getDB() {
		return new JDBCDB();
	}
}
