

class User {
  int? id;
  String? name;
  String? email;
  List<dynamic>? archives = [];
  User.FromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    archives?.addAll(json['Archive']);
  }
}
