
public class API사용해보기 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String ab = "hello world";
		String cd = "HELLO WORLD";
		
		System.out.println(ab.startsWith("h"));//문자열이 지정한 문자로 시작하는지 판단, 같으면 true반환 아니면 false를 반환한다(대소문자구별)
		System.out.println(ab.startsWith("a"));
		
		System.out.println(ab.endsWith("d"));//문자열 마지막에 지정한 문자가 있는지를 판단후 있으면 true, 없으면 false를 반환한다(대소문자구별)
		System.out.println(ab.endsWith("a"));
		
		System.out.println(ab.replace("hello","hi"));//문자열에 지정한 문자" "가 있으면 새로 지정한 문자" "로 바꿔서 출력한다.
		
		System.out.println(ab.toUpperCase());//문자열에 소문자를 대문자로 변환한다.
		
		System.out.println(cd.toLowerCase());//문자열에 대문자를 소문자로 변환한다.
		
		System.out.println(ab.equalsIgnoreCase("HELLO WORLD"));//대소문자 구분없이 비교한다.(boolean 형식)
		
		System.out.println(ab.indexOf("h"));//지정한 문자가 문자열에 몇번째에 있는지를 반환한다(0부터)
		
		System.out.println(ab.length());//문자열의 길이를 반환한다.
		
		System.out.println(ab.substring(0,3));//문자열에 지정한 범위에 속하는 문자열을 반환한다.(시작범위의 값은 포함하고, 끝나는 범위의 값은 포함하지 않는다.)
		
		int i = 12345;
		long l = 1L;
		char c = '1';
		System.out.println(String.valueOf (i));//기본타입 : 숫자, 문자열, 불리언, null, undefined 
		System.out.println(String.valueOf (l));//위 자바스크립트 값은 더이상 단순화할 수 없기 때문에 원시값이라고 함.
		System.out.println(String.valueOf (c));//지정한 개체의 원시 값을 반환
		
		String ef = "This;!Is!Hello!;World";
		String[] split = ef.split(";");
		System.out.println(split [1]);//지정한 문자로 문자열을 나눌 수 있다.(배열로 반환)
		
		String str1 = "hello";
		String str2 = "hello";
		boolean equals = str1.equals(str2);
		System.out.println(equals);//두개의 String에 값만을 비교해서 같으면 true, 다르면 false를 반환한다.(대소비교)
		
		System.out.println(ab.charAt(4));//지정한 index 번째의 문자를 반환한다.(0번째 부터)
		
		String gh = "       hello world          ";
		System.out.println(gh.trim());//문자열에 공백을 없애준다.
		
		String str3 = "abcd";
		String str4 = "b";
		System.out.println(str3.contains(str4));//두개의 String을 비교해서 비교대상 String을 포함하면 true, 다르면 false를 반환한다.
		
		String str5 = "hello";
		String str6 = " world";
		System.out.println(str5.concat(str6));//문자와 문자를 결합해준다.
		
		int a = 123456789;
		String str7 = String.format("%,d", a);
		String str8 = "123456789";
		System.out.println(str7.matches(str8));//지정한 정규 표현과 일치 할때 true를 반환한다.(format을 걸면 서식화된 문자열이 반환됨)
		
		String str9 = String.format("%,d", a);
		System.out.println(str9);//서식문자열을 이용해서 서식화된 문자열을 반환한다.
		
		System.out.println(ab.toString());//문자열을 그대로 반환해준다.
		}
}
