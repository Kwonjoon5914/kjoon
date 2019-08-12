package ����ó��;

import java.io.FileOutputStream;
import java.io.FileInputStream;
import java.io.InputStream;

public class FileCopy1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			InputStream in = new FileInputStream("C:\\test\\aa.png");
			// ������ ����, ������ ���� ����.
			FileOutputStream out = new FileOutputStream("C:\\test\\cc.png");
			long start = System.currentTimeMillis();
			while (true) {
				int data = in.read();
				if (data == -1) {
					break;
				}
				out.write(data);
			}
			long end = System.currentTimeMillis();
			System.out.println(end - start);
			in.close();
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}