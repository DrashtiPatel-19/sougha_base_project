import '../../../utils/exports.dart';

abstract class LoginRepository extends BaseRepository {
  Future<LoginResponse?> login({
    required LoginRequest request,
  });
}
