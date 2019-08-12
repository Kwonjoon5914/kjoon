package 파일처리;

import java.io.RandomAccessFile;

public class 랜덤액세스 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			RandomAccessFile raf;
			String readStr;
			raf = new RandomAccessFile("c:\\test\\test.txt", "rw");
			while (true) {
				readStr = new String(raf.readLine().getBytes("ISO-8859-1"), "UTF-8"); {
				System.out.println(readStr);
			}
			raf.close();
			}
			} catch (Exception e) {
			e.printStackTrace();
		}
	}	
}
	