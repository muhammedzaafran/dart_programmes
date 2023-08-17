abstract class Animal {
  void speak();
}
class Cat extends Animal {
  @override
  void speak() {
    print("meow moew!");
  }
}
class Duck extends Animal {
  @override
  void speak() {
    print("quack quack!");
  }
}
void main() {
  var dog = Cat();
  dog.speak();

  var cat = Duck();
  cat.speak();
}