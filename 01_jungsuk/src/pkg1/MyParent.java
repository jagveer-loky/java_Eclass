package pkg1;

public class MyParent{
	private 	int prv; // ���� Ŭ����
				int dft; // ���� ��Ű��
	protected 	int prt; // ���� ��Ű�� + �ڼ�(�ٸ� ��Ű�� �ڼ�)
	public 		int pub; // ���� ���� ����
	
	public void printMembers() {
		System.out.println(prv); // ok
		System.out.println(dft); // ok
		System.out.println(prt); // ok
		System.out.println(pub); // ok
	}
}

class MyParentTest {

	public static void main(String[] args) {
		MyParent p = new MyParent();
//		System.out.println(p.prv); // ����
		System.out.println(p.dft); // ok
		System.out.println(p.prt); // ok
		System.out.println(p.pub); // ok
		
		
	}

}