/**
 * ������ ��� ���α׷�
 * ������ Ȱ���� ������ ����� �Ȱ��� ������ ���α׷�
 * @author NoName
 *
 */
public class ����f {

	public static void main(String[] args) {
		int mach;
		int distance;
		mach = 340;
		distance = mach * 60 * 60;
		System.out.println("�Ҹ��� 1�ð� ���� ���� �Ÿ� :" + distance + "m");
		System.out.printf("�Ҹ��� 1�ð� ���� ���� �Ÿ� :" + distance + "m\n");
		
		double radius;
		double area;
		radius = 10.0;
		area = radius * radius * 3.14;
		System.out.println("�������� " + radius + "�� ���� ���� : " + area);
		System.out.printf("�������� " + radius + "�� ���� ���� : " + area + "\n\n");
		
		int currentBalance;
		final int CURRENT_PRICE = 1250;
		currentBalance = 30000;
		System.out.println("���� ī�� �ܾ��� " + currentBalance + "�� �Դϴ�.");
		//ī�带 �����
		currentBalance = currentBalance - CURRENT_PRICE;
		System.out.println("���� ī�� �ܾ��� " + currentBalance + "�� �Դϴ�.");		
		//ī�带 �����
		currentBalance = currentBalance - CURRENT_PRICE;
		System.out.println("���� ī�� �ܾ��� " + currentBalance + "�� �Դϴ�.");		
		//����
		currentBalance = currentBalance + 10000;
		System.out.println("���� ī�� �ܾ��� " + currentBalance + "�� �Դϴ�.\n");		
		
		char ga1 = '��';
		char ga2 = '\uac00';
		boolean cham = true;
		boolean geojit = false;
		
		System.out.println(ga1);
		System.out.println(ga2);
		System.out.println(cham + "�� �ƴϸ�" + geojit + "�Դϴ�.\n");
		// ����� Ÿ��Ʋ �κ� ���
		System.out.printf("AA%5.2fBBB\n", 10.125);
		// ��ǰ ����Ʈ ���
		System.out.printf("AA%-5dBBB\n",5);
		
		int data;
		float floatData;
		floatData = (float)122.5;
		data = (int)floatData;
		System.out.println(data);
		/**
		 * �̸� : ȫ�浿
		 * ���� : 30
		 * ���� : 11�� 13��
		 * �λ縻 : �ȳ��ϼ���. �ݰ����ϴ�. �����ش��� ���ձ���������� ���Ű� ȯ���մϴ�.
		 */
		System.out.println("�ȳ� ����");
		System.out.println("�ȳ� " + "����");
		System.out.println("�̸� : ȫ�浿\n" + 
				"���� : 30\n" + 
				"���� : 11�� 13��\n" + 
				"�λ縻 : �ȳ��ϼ���. �ݰ����ϴ�." + 
				"�ѱ� �����ش��� ���ձ���������� ���Ű�" + 
				"ȯ���մϴ�.");
	}
}
