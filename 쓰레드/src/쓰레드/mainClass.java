package 쓰레드;

public class mainClass {

	public static void main(String[] args) { //main은 단독으로 되어있기때문에 static 사용
		// TODO Auto-generated method stub
		processOne p1 = new processOne();
		processTwo p2 = new processTwo();
		p1.run();
		p2.run();
	}

}
