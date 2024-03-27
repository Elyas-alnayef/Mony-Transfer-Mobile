class Point {
  int? id;
  String? name;
  String? country;
  String? adress;
  int? currentBalance;
  int? managerId;
  Point.FromJason(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    country = json['country'];
    adress = json['address'];
    currentBalance = json['current_balance'];
    managerId = json['manger']['id'];
  }
}
