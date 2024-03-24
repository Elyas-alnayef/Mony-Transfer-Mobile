class Point {
  int? id;
  String? name;
  String? country;
  String? adress;
  int? currentBalance;
  int? managerId;
  Point.FromJason(Map<String, dynamic> json) {
    id = json['data']['id'];
    name = json['data']['name'];
    country = json['data']['country'];
    adress = json['data']['address'];
    currentBalance = json['data']['current_balance'];
    managerId = json['data']['manger']['id'];
  }
}
