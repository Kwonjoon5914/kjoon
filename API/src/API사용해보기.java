
public class API����غ��� {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String ab = "hello world";
		String cd = "HELLO WORLD";
		
		System.out.println(ab.startsWith("h"));//���ڿ��� ������ ���ڷ� �����ϴ��� �Ǵ�, ������ true��ȯ �ƴϸ� false�� ��ȯ�Ѵ�(��ҹ��ڱ���)
		System.out.println(ab.startsWith("a"));
		
		System.out.println(ab.endsWith("d"));//���ڿ� �������� ������ ���ڰ� �ִ����� �Ǵ��� ������ true, ������ false�� ��ȯ�Ѵ�(��ҹ��ڱ���)
		System.out.println(ab.endsWith("a"));
		
		System.out.println(ab.replace("hello","hi"));//���ڿ��� ������ ����" "�� ������ ���� ������ ����" "�� �ٲ㼭 ����Ѵ�.
		
		System.out.println(ab.toUpperCase());//���ڿ��� �ҹ��ڸ� �빮�ڷ� ��ȯ�Ѵ�.
		
		System.out.println(cd.toLowerCase());//���ڿ��� �빮�ڸ� �ҹ��ڷ� ��ȯ�Ѵ�.
		
		System.out.println(ab.equalsIgnoreCase("HELLO WORLD"));//��ҹ��� ���о��� ���Ѵ�.(boolean ����)
		
		System.out.println(ab.indexOf("h"));//������ ���ڰ� ���ڿ��� ���°�� �ִ����� ��ȯ�Ѵ�(0����)
		
		System.out.println(ab.length());//���ڿ��� ���̸� ��ȯ�Ѵ�.
		
		System.out.println(ab.substring(0,3));//���ڿ��� ������ ������ ���ϴ� ���ڿ��� ��ȯ�Ѵ�.(���۹����� ���� �����ϰ�, ������ ������ ���� �������� �ʴ´�.)
		
		int i = 12345;
		long l = 1L;
		char c = '1';
		System.out.println(String.valueOf (i));//�⺻Ÿ�� : ����, ���ڿ�, �Ҹ���, null, undefined 
		System.out.println(String.valueOf (l));//�� �ڹٽ�ũ��Ʈ ���� ���̻� �ܼ�ȭ�� �� ���� ������ ���ð��̶�� ��.
		System.out.println(String.valueOf (c));//������ ��ü�� ���� ���� ��ȯ
		
		String ef = "This;!Is!Hello!;World";
		String[] split = ef.split(";");
		System.out.println(split [1]);//������ ���ڷ� ���ڿ��� ���� �� �ִ�.(�迭�� ��ȯ)
		
		String str1 = "hello";
		String str2 = "hello";
		boolean equals = str1.equals(str2);
		System.out.println(equals);//�ΰ��� String�� ������ ���ؼ� ������ true, �ٸ��� false�� ��ȯ�Ѵ�.(��Һ�)
		
		System.out.println(ab.charAt(4));//������ index ��°�� ���ڸ� ��ȯ�Ѵ�.(0��° ����)
		
		String gh = "       hello world          ";
		System.out.println(gh.trim());//���ڿ��� ������ �����ش�.
		
		String str3 = "abcd";
		String str4 = "b";
		System.out.println(str3.contains(str4));//�ΰ��� String�� ���ؼ� �񱳴�� String�� �����ϸ� true, �ٸ��� false�� ��ȯ�Ѵ�.
		
		String str5 = "hello";
		String str6 = " world";
		System.out.println(str5.concat(str6));//���ڿ� ���ڸ� �������ش�.
		
		int a = 123456789;
		String str7 = String.format("%,d", a);
		String str8 = "123456789";
		System.out.println(str7.matches(str8));//������ ���� ǥ���� ��ġ �Ҷ� true�� ��ȯ�Ѵ�.(format�� �ɸ� ����ȭ�� ���ڿ��� ��ȯ��)
		
		String str9 = String.format("%,d", a);
		System.out.println(str9);//���Ĺ��ڿ��� �̿��ؼ� ����ȭ�� ���ڿ��� ��ȯ�Ѵ�.
		
		System.out.println(ab.toString());//���ڿ��� �״�� ��ȯ���ش�.
		}
}
