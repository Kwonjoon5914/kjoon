import java.sql.*;

import java.util.Scanner;

public class Mainclass {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			Scanner in = new Scanner(System.in);
			String student_id, student_name, student_birth, student_address;
			Class.forName("com.mysql.cj.jdbc.Driver"); //����̹�
		    Connection conn = DriverManager.getConnection(
		    		"jdbc:mysql://localhost/student?useSSL=false&serverTimezone=UTC", 
		    												"root" , "rnjs4288");//������ DB����,DB�� ������ ����� �̸�
		    																		//������� ��й�ȣ
		    Statement stmt = conn.createStatement(); 
		    
		    System.out.println("�й� : ");
		    student_id = in.nextLine();
		    System.out.println("�̸� : ");
		    student_name = in.nextLine();
		    System.out.println("���� : ");
		    student_birth = in.nextLine();
		    System.out.println("�ּ� : ");
		    student_address = in.nextLine();
		    
		    stmt.execute("INSERT INTO student_table (number, name, birth, address) " +
		    			"VALUES ('" + student_id + 
		    			"', '" + student_name + 
		    			"', '" + student_birth +
		    			"', '" + student_address + 
		    			"')");
		    
		    ResultSet rset = stmt.executeQuery("SELECT * FROM `student_table`");  //sql���� ����
		    while (rset.next()) { 
		          System.out.println(rset.getInt(1) + ", " + 
					        		  rset.getString(2) + ", " + 
					        		  rset.getInt(3) + ", " + 
					        		  rset.getString(4));
		    } 
		    rset.close(); 
		    stmt.close(); 
		    conn.close(); 
		}catch(Exception e) { //���� �߻� �� ó���κ�
			e.printStackTrace();
		}
		

	}

}