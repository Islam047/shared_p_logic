class SignUp {
  late String name;
  late String email;
  late String phone;
  late String password;
  late String conPassword;

  SignUp(this.name, this.email, this.phone, this.password, this.conPassword);

  SignUp.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    password = json['password'];
    conPassword = json['conPassword'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'name': name,
      'email': email,
      'phone': phone,
      'password': password,
      'conPassword': conPassword,
    };
    return map;
  }
}
