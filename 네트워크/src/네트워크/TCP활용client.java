package ��Ʈ��ũ;

import java.net.*;
import java.io.*; 

public class TCPȰ��client {
	public static void main(String args[]) {
		try {
			 Socket s1; 
			 InputStream is1; 
			 DataInputStream is2; 
			 OutputStream os1; 
			 DataOutputStream os2; 

			 String sendString = "ȥ���ɼ��� (client -> server)"; 
			 s1 = new Socket("192.168.23.102", 5432); 
			 is1 = s1.getInputStream();
			 is2 = new DataInputStream(is1);
			 String st = new String(is2.readUTF());
			 System.out.println(st);
			 os1 = s1.getOutputStream();
			 os2 = new DataOutputStream(os1);
			 os2.writeUTF("<���� ����>" + sendString + "<���� ��ħ>");
			 
			 os2.close();
			 os1.close();
			 is2.close();
			 is2.close();
			 s1.close();
			} catch(ConnectException e) {
			System.err.println("���� ���� ����"); 
			}
		catch(IOException e) {e.printStackTrace();}
	}
}