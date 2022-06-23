class User {
  late String email;
  late String password;

  User(this.email, this.password);

  User.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'email': email,
      'password': password,
    };
    return map;
  }
}
