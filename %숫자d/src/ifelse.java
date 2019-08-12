
public class ifelse {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int data = 10;
		if( data >= 90 )	{
			System.out.println("A 입니다.");
	}	else if( data >= 80 ) {
			System.out.println("B 입니다.");
	}	else if( data >= 70 ) {
			System.out.println("C 입니다.");
	}	else if( data >= 60 ) {
			System.out.println("D 입니다.");
	}	else {
			System.out.println("F 입니다.");
			
		int rank = 4;
			switch(rank) {
			case 1:
				System.out.println("1등 입니다.");
				break;
			case 2:
				System.out.println("2등 입니다.");
				break;
			case 3:
				System.out.println("3등 입니다.");
				break;
			default:
				System.out.println("탈락 입니다.");
				
			int point = 95;
			switch(point / 10) {
			case 10:
			case 9:
				System.out.println("A 입니다.");
				break;
			case 8:
				System.out.println("B 입니다.");
				break;
			case 7:
				System.out.println("C 입니다.");
				break;
			case 6:
				System.out.println("D 입니다.");
				break;
			default:
				System.out.println("F 입니다");		
			}
			}
		}
	}
}