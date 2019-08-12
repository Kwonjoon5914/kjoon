package 네트워크;

import java.net.*;
import java.io.*;
import java.lang.*;

public class UDPserver {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		try {
			DatagramSocket ds = new DatagramSocket(6852);
			byte[] bf = new byte[30];
			DatagramPacket dp = new DatagramPacket(bf, bf.length);

			while (true) {
				try {
					ds.receive(dp);
					String rs1 = new String(dp.getData());
					String rs2 = new String(rs1.trim());
					System.out.println("주소:" + dp.getAddress() + "포트 번호 :" + dp.getPort());
					System.out.println("수신된 메시지(Client->Server): " + rs2);
				} catch (IOException e) {
				}
			}
		} catch (IOException e) {
		}
	}
}