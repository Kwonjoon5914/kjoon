
public class SingleTonMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		SingleTon.getInstance();//싱글톤을 통해 객체 생성
		SingleTon s1 = SingleTon.getInstance();
		SingleTon s2 = SingleTon.getInstance();
		SingleTon s3 = SingleTon.getInstance();
		SingleTon s4 = SingleTon.getInstance();
		
		System.out.println(s1);//출력(모두 같은 값이 나온다)
		System.out.println(s2);//출력
		System.out.println(s3);//출력
		System.out.println(s4);//출력
		
//		SingleTon s5 = new SingleTon();
//		SingleTon s6 = new SingleTon();
//		
//		System.out.println(s5);//출력 (다른 값이 나온다)
//		System.out.println(s6);//출력 (다른 값이 나온다)
	}

}
