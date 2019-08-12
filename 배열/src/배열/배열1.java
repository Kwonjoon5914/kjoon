package 배열;

public class 배열1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int[] arr={1,2,3,4,5}; //arr이 5개가 생성 -> 1=arr의[0]번째, 2=arr의[1]번째......
		
		int[] arr2 = arr;//new int[5];
		int[] arr3 = arr2;//arr3=arr2=arr
		
		arr3[0] = 10; //[i]번째 값을 뒤의 값으로
		
		System.out.println(arr[0]);
		System.out.println(arr2[0]);
		System.out.println(arr3[0]); 
		
		String str = "hello,my,name,is";
		String[] result;
		result = str.split(","); //구분
		System.out.println(result[1]);
	}

}
