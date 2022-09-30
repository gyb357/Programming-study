package test;

public class PointMove {
	public static void main(String[] args) {
		Point point1 = new Point();
		point1.move(10, 10);
		
		System.out.print("x = " + point1.xPos + "\n" + "y = " + point1.yPos);
	}

}
