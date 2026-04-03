class User {
  String name = "";
  int age = 0;
  double height = 0.0;

  Map<String, dynamic> toJson() {
    return {'name': name, 'age': age, 'height': height};
  }
}
