
public class ifelse {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int data = 10;
		if( data >= 90 )	{
			System.out.println("A �Դϴ�.");
	}	else if( data >= 80 ) {
			System.out.println("B �Դϴ�.");
	}	else if( data >= 70 ) {
			System.out.println("C �Դϴ�.");
	}	else if( data >= 60 ) {
			System.out.println("D �Դϴ�.");
	}	else {
			System.out.println("F �Դϴ�.");
			
		int rank = 4;
			switch(rank) {
			case 1:
				System.out.println("1�� �Դϴ�.");
				break;
			case 2:
				System.out.println("2�� �Դϴ�.");
				break;
			case 3:
				System.out.println("3�� �Դϴ�.");
				break;
			default:
				System.out.println("Ż�� �Դϴ�.");
				
			int point = 95;
			switch(point / 10) {
			case 10:
			case 9:
				System.out.println("A �Դϴ�.");
				break;
			case 8:
				System.out.println("B �Դϴ�.");
				break;
			case 7:
				System.out.println("C �Դϴ�.");
				break;
			case 6:
				System.out.println("D �Դϴ�.");
				break;
			default:
				System.out.println("F �Դϴ�");		
			}
			}
		}
	}
}