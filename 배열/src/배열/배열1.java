package �迭;

public class �迭1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int[] arr={1,2,3,4,5}; //arr�� 5���� ���� -> 1=arr��[0]��°, 2=arr��[1]��°......
		
		int[] arr2 = arr;//new int[5];
		int[] arr3 = arr2;//arr3=arr2=arr
		
		arr3[0] = 10; //[i]��° ���� ���� ������
		
		System.out.println(arr[0]);
		System.out.println(arr2[0]);
		System.out.println(arr3[0]); 
		
		String str = "hello,my,name,is";
		String[] result;
		result = str.split(","); //����
		System.out.println(result[1]);
	}

}
