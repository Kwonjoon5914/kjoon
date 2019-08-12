
public class 배열과제2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 준비
		int M = 10;
		int A[][] = new int[M][M];
		int K = ((M - 1) * (M - 1)) + 1;
		int N = M - 1;// M-1
		int SW = -1;
		int I = 1, J = M;

		// 처리
		do {
			for (int P = 1; P <= N; P++) {
				K = K - 1;
				J = J + SW;
				A[I][J] = K;
			}
			SW = SW * (-1);
			N = N - 1;
			if (N > 0) {
				for (int P = 1; P <= N; P++) {
					K = K - 1;
					I = I + SW;
					A[I][J] = K;
				}
			} else {
				break;
			}
		} while (true);

		// 출력
		for (int i = 1; i < M; i++) {
			for (int j = 1; j < M; j++) {
				System.out.print(A[i][j] + "\t");
			}
			System.out.println();
		}
	}
}