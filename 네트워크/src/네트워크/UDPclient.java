package 네트워크;

import java.net.*;
import java.io.*;

public class UDPclient {
	public static void main(String args[]) {
		try {
			DatagramSocket ds = new DatagramSocket();
			InetAddress ia = InetAddress.getByName("192.168.23.103");
			String sendMSG = "안녕하세영~~~~~~";
			byte[] bf = sendMSG.getBytes();
			DatagramPacket dp = new DatagramPacket(bf, bf.length, ia, 9999);
			for (int i=0; i<100; i++) {
				ds.send(dp);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}
