import 'dart:convert';

void main() {
  var rawJson = '{"url": "http://blah.jpg", "id": 1}';
  var parsedJson = json.decode(rawJson);
  print(parsedJson);

  print(parsedJson['url']);
  print(parsedJson['id']);

  var imageModel = ImageModel(parsedJson['id'], parsedJson['url']);
  print(imageModel.id);
  print(imageModel.url);

  // Using a named constructor
  imageModel =  ImageModel.fromJson(parsedJson);
  print(imageModel.id);
  print(imageModel.url);
}

class ImageModel {
  int id;
  String url;

  ImageModel(this.id, this.url);

  // Named Constructor
  ImageModel.fromJson(parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
  }
}
