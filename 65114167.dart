class Person {
  String _name;
  Person(this._name);
  String get name => _name;
}

class Engine {
  String _model;
  int _speed;
  Engine(this._model, this._speed);
  String get model => _model;
  int get speed => _speed;
  void displayEngineInfo() {
    print('Engine Model: $_model, speed: $_speed km/h');
  }
}

class Car {
  String _brand;
  String _model;
  Person _owner;
  Engine _engine;
  Car(this._brand, this._model, this._owner, this._engine);
  String get brand => _brand;
  String get model => _model;
  Person get owner => _owner;
  Engine get engine => _engine;
  void displayCarInfo() {
    print('Car brand: $_brand');
    print('Car model: $_model');
    print('owner: ${_owner.name}');
    _engine.displayEngineInfo();
  }

  void run() {
    print('The car is running at speed: ${_engine.speed} km/h');
  }
}

class Honda extends Car {
  String _color;
  Honda(String brand, String model, Person owner, Engine engine, this._color)
      : super(brand, model, owner, engine);
  String get color => _color;
  @override
  void displayCarInfo() {
    print('Car Brand: $_brand');
    print('Car Model: $_model');
    print('Car Color: $_color');
    print('Owner: ${owner.name}');
    engine.displayEngineInfo();
  }

  @override
  void run() {
    print('The car is running at speed: 120 km/h');
  }
}

void main() {
  var owner = Person('Paul Walker');
  var engine = Engine('RB26DETT', 300);
  var car = Car('NISSAN🌟', 'GTR-R33🏎️', owner, engine);

  var newEngine = Engine('DOHC', 170);
  var honda = Honda('Honda🌟', 'CIVIC TYPE R.🚗', owner, newEngine, 'Red');

  car.displayCarInfo();
  car.run();

  print('------------------------------------------------');

  honda.displayCarInfo();
  honda.run();
}
