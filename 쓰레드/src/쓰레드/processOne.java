package 쓰레드;

public class processOne extends Thread {
	Thread t; //Thread 보면 while-true가 많음
	processOne() {
		t = new Thread(this);
		t.start();
	}

	public void run() {
		try {
			for (int i = 0; i < 1000; i++) {
				System.out.println("One : " + i);
				Thread.sleep(200); //0.2초 정도의 속도로 출력
		}
		} catch(Exception e) {
	}
}
}