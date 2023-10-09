import '../../../utils/exports.dart';

class LoginRepositoryImpl extends LoginRepository {
  @override
  Future<LoginResponse?> login({required LoginRequest request}) async {
    final response = await apiClient.post<Map<String, dynamic>>(Apis.signIn,
        data: request.toJson());
    var data = getParsedResponseHandler(
      responseHandler: response,
      parser: (value) => BaseResponse<LoginResponse>.fromJson(
        value,
        (json) => LoginResponse.fromJson(json),
      ),
    );
    if (data.isSuccess() && data.getSuccessInstance() != null) {
      var loginResponse = data.getSuccessInstance()!.response;
      if (loginResponse.meta?.status == true) {
        showSnackBar(AppString.loginSuccessfullyKey.tr);
        SharedPref.setValue(PrefsKey.isLoggedIn, true);
        SharedPref.setValue(PrefsKey.keyEmail, request.userName);
        Get.offAllNamed(AppPaths.dashboard);
        return loginResponse.data;
      } else {
        showSnackBar(loginResponse.meta?.message ?? '');
      }
    } else {
      showSnackBar(data.getFailureInstance()!.error!.errorMessage);
    }
    return null;
  }
}
