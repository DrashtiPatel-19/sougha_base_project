class LoginRequest {
  String userName, password;

  LoginRequest({required this.userName, required this.password});

  Map<String, String> toJson() {
    var map = <String, String>{};
    map = {'email': userName, 'password': password};
    return map;
  }
}
