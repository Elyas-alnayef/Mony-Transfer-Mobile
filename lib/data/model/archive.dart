class Archive {
  int? id;
  String? from;
  String? to;
  String? user;
  int? total;
  String? status;
  Archive.FromJason(Map<String, dynamic> json) {
    id = json["id"];
    from = json["sender"]["name"];
    to = json["receiver"]["name"];
    user = json["user"]["name"];
    total = json["total_amount"];
    status = json['status'];
  }
}
