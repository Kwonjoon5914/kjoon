package ¾²·¹µå;

public class processTwo extends Thread {
	Thread t;

	processTwo() {
		t = new Thread(this);
		t.start();
	}

	public void run() {
		try {
			for (int i = 0; i < 1000; i++) {
				System.out.println("Two : " + i);
				Thread.sleep(200);
		}
		} catch(Exception e) {
	}
}
}