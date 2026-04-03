void outer(String name, String id) {

  String inner() {
    String firstName = name.split(" ")[0];
    return "Hello Agent B.$firstName your id is $id";
  }

  print(inner());
}