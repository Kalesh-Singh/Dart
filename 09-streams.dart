import 'dart:async';

class Cake {

}

class Order {
  String type;
  Order(this.type);
}


void main() {
  final controller = new StreamController();
  final order = new Order('banana');

  final baker = new StreamTransformer.fromHandlers(
    handleData: (cakeType, sink) {
      if (cakeType == 'chocolate') {
        sink.add(new Cake());
      } else {
        sink.addError("I can't bake that type!");
      }
    }
  );

  controller.stream
    .map((order) => order.type)
    .transform(baker)
    .listen(
      (cake) => print("Here's youre cake!"),
      onError: (error) => print(error),
    );

  controller.sink.add(order);
  controller.sink.add(new Order('chocolate'));

}

