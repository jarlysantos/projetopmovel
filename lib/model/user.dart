class User {
  late String username;
  late String password;
  late int id;
  late String imageUrl;
  late String name;

  User(this.username, this.password);

  User.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];
    id = json['id'];
    name = json['name'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['username'] = username;
    data['password'] = password;
    return data;
  }
}