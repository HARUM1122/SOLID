// THIS IS A BAD APPROACH BECAUSE WE HAVE TO MODIFY THE EXISTING CODE TO ADD MORE FUNCTIONALITIES

class AreaCalculator {
  double calculate(String shape) {
    if (shape == 'circle') {
      // Calculate the area of circle and return the output
    }
    if (shape == 'square') {
      // Calculate the area of circle and return the output
    }
    return 0;
  }
}
void main() => AreaCalculator().calculate('circle');

// THIS APPROACH IS BETTER BECAUSE WE DON'T HAVE TO MODIFY THE EXISTING CODE TO ADD MORE FUNCTIONALITIES WHICH ADHERES TO THE OPEN/CLOSE PRINCIPLE

abstract interface class Shape {
  double calculateArea();
}


class Square implements Shape {
  @override
  double calculateArea() {
    return 0; // CALCULATE THE AREA HERE
  }
}

class Circle implements Shape {
  @override
  double calculateArea() {
    return 0; // CALCULATE THE AREA HERE
  }
}

// NOW YOU CAN ADD MORE SHAPES WITHOUT MODIFYING THE EXISTING CODE

class AreaCalculator {
  final Shape shape;
  AreaCalculator(this.shape);

  double calculateArea() => shape.calculateArea();
}

void main() => AreaCalculator(Square()).calculateArea();
