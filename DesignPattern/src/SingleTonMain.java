
public class SingleTonMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		SingleTon.getInstance();//�̱����� ���� ��ü ����
		SingleTon s1 = SingleTon.getInstance();
		SingleTon s2 = SingleTon.getInstance();
		SingleTon s3 = SingleTon.getInstance();
		SingleTon s4 = SingleTon.getInstance();
		
		System.out.println(s1);//���(��� ���� ���� ���´�)
		System.out.println(s2);//���
		System.out.println(s3);//���
		System.out.println(s4);//���
		
//		SingleTon s5 = new SingleTon();
//		SingleTon s6 = new SingleTon();
//		
//		System.out.println(s5);//��� (�ٸ� ���� ���´�)
//		System.out.println(s6);//��� (�ٸ� ���� ���´�)
	}

}
