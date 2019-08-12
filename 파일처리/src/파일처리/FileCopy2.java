package 파일처리;

import java.io.FileOutputStream;
import java.io.FileInputStream;
import java.io.InputStream;

public class FileCopy2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		try {
			byte[] buffer = new byte[1024 * 8];
			InputStream in = new FileInputStream("C:\\test\\cc.png");
			// 없으면 새로, 있으면 덮어 쓴다.
			FileOutputStream out = new FileOutputStream("C:\\test\\dd.png");
			long start = System.currentTimeMillis();
			while (true) {
				int count = in.read(buffer);
				if (count == -1) {
					break;
				}
				out.write(buffer, 0, count);
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