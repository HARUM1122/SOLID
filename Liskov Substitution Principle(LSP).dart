// THIS VIOLATES LISKOV SUBSTITUTION

class Bird {
  void fly() {
    print("Bird flying");
  }
}

class Sparrow extends Bird {
  @override
  void fly() {
    print("Sparrow flying");
  }
}

class Penguin extends Bird {
  @override
  void fly() {
    throw Exception("PENGUINS CAN'T FLY");
  }
}

void main() {
  Bird bird = Penguin();
  bird.fly(); // This will give an error
}



// THIS IS A BETTER APPROACH AND ADHERES TO THE LISKOV SUBSTITUTION PRINCIPLE

class Bird {
  // Common properties or methods for all birds
}

class FlyingBird extends Bird {
  void fly() {
    print("I can fly!");
  }
}

class Sparrow extends FlyingBird {
  @override
  void fly() {
    print("Sparrow flying!");
  }
}

class NonFlyingBird extends Bird {
  // No fly method needed here
}

class Penguin extends NonFlyingBird {
  // No fly method, as penguins can't fly
}
