//////////////////////////////////////////////////////
//
// Title : Singleton
// Date  : 2019.05.24
// Author : KJ
// Comment : Singleton
//
//////////////////////////////////////////////////////
public class SingleTon {
	private static SingleTon s = new SingleTon();//���� ����(s �ܺο��� ������ �ϱ����� private)
	
	private SingleTon() {//public���� �ٲٰԵǸ�
		
	}
	
	public static SingleTon getInstance () {//�޼���
		if(s == null) {
			s = new SingleTon();//s���� null�̸� SingleTon ���� ����
		}
		return s;//s�� ��ȯ
	}
}
