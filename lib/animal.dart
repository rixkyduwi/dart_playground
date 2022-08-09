class Animal {
  String _name = '';
  int _age = 0;
  double _weight = 0;

  Animal(this._name, this._age, this._weight);

  // Setter
  set name(String value) {
    _name = value;
  }
  // Getter
  double get weight => _weight;

  void eat() {
    print('$_name is eating.');
    _weight = _weight + 0.2;
  }

  void sleep() {
    print('$_name is sleeping.');
  }

  void poop() {
    print('$_name is pooping.');
    _weight = _weight - 0.1;

  }

}
class Mammal {}
class Bird {}
mixin Flyable {
  void fly() {
    print("I'm flying");
  }
}

mixin Walkable {
  void walk() {
    print("I'm walking");
  }
}

mixin Swimmable {
  void swim() {
    print("I'm swimming");
  }
}
class Cat extends Mammal with Walkable { }

class Duck extends Bird with Walkable, Flyable, Swimmable { }