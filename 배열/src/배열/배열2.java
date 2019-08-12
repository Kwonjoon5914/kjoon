package 배열;

public class 배열2 {

	public static void main(String[] args) {
		// int score[][x좌표(0부터)][y좌표(0부터)] = new int [다른 표 번째수] [20]학생수 [5]과목수
		final int N = 5;
		int[][] array = new int[N][N];
		int count = 1;

		for (int k = 0; k < N; k++) {

			for (int i = 0; i < N; i++) {
				array[i][k] = count;
				count++;
			}
//			k++;
//			if(k <= N)break;
//			for(int i=N-1;i<=k;i--) {
//				array[k][i] = count;
//				count++;
//			}
		}
		for (int k = 0; k < N; k++) {
			for (int i = 0; i < N; i++) {
				System.out.printf("%3d", array[i][k]);
			}
			System.out.println();
		}
	}
}