package 네트워크;

import java.net.*;
import java.io.*; 

public class TCP활용client {
	public static void main(String args[]) {
		try {
			 Socket s1; 
			 InputStream is1; 
			 DataInputStream is2; 
			 OutputStream os1; 
			 DataOutputStream os2; 

			 String sendString = "혼저옵서예 (client -> server)"; 
			 s1 = new Socket("192.168.23.102", 5432); 
			 is1 = s1.getInputStream();
			 is2 = new DataInputStream(is1);
			 String st = new String(is2.readUTF());
			 System.out.println(st);
			 os1 = s1.getOutputStream();
			 os2 = new DataOutputStream(os1);
			 os2.writeUTF("<전송 시작>" + sendString + "<전송 마침>");
			 
			 os2.close();
			 os1.close();
			 is2.close();
			 is2.close();
			 s1.close();
			} catch(ConnectException e) {
			System.err.println("서버 연결 실패"); 
			}
		catch(IOException e) {e.printStackTrace();}
	}
}