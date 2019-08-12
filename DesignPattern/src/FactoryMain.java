
public class FactoryMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ShapeFactory shapeFactory = new ShapeFactory();

	      //get an object of Circle and call its draw method.
	      shape shape1 = shapeFactory.getshape("CIRCLE");

	      //call draw method of Circle
	      shape1.draw();

	      //get an object of Rectangle and call its draw method.
	      shape shape2 = shapeFactory.getshape("RECTANGLE");

	      //call draw method of Rectangle
	      shape2.draw();

	      //get an object of Square and call its draw method.
	      shape shape3 = shapeFactory.getshape("SQUARE");

	      //call draw method of square
	      shape3.draw();

	}

}
