class User {
  int id = 0;
  String name = '';
  int age = 0;
  double height = 0.00;

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
  });

  toJson() {
    return ({
      'id': this.id,
      'name': this.name,
      'age': this.age,
      'height': this.height,
    });
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
    );
  }

  @override
  String toString() {
    return 'User(id : ${id} ,name: ${name}, age: ${age}, height: ${height})';
  }
}
