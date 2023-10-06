class LoginRequest {
  String userName, password , device_type , device_token;

  LoginRequest({required this.userName, required this.password , required this.device_token , required this.device_type});

  Map<String, String> toJson() {
    var map = <String, String>{};
    map = {'email': userName, 'password': password , 'device_type' : device_type , 'device_token' : device_token};
    return map;
  }
}
