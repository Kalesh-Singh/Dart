void main() {
  var circleSlot = Slot<Circle>();
  circleSlot.insert(Circle());
}

class Circle {}
class Square {}

class Slot<T> {
  insert(T shape) {

  }
}

