package test2;

class Point {
	int xPos, yPos;
	
	void move(int x, int y) {
		xPos = x;
		yPos = y;
	}
}

public class PointMove2 {
	public static void main(String[] args) {
		Point point1 = new Point();
		point1.move(10, 10);
		
		System.out.print("x = " + point1.xPos + "\n" + "y = " + point1.yPos);

	}

}
