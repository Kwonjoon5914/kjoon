package �迭;

public class �迭2 {

	public static void main(String[] args) {
		// int score[][x��ǥ(0����)][y��ǥ(0����)] = new int [�ٸ� ǥ ��°��] [20]�л��� [5]�����
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