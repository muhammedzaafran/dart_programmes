// Abstract class serving as an "interface"
abstract class Shape {
  double calculateArea(); // Method to be implemented by subclasses
}

// Classes implementing the "interface"
class Circle implements Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14159 * radius * radius;
  }
}

class Rectangle implements Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }
}

void main() {
  final circle = Circle(5);
  final rectangle = Rectangle(4, 6);

  print('Circle area: ${circle.calculateArea()}');
  print('Rectangle area: ${rectangle.calculateArea()}');
}