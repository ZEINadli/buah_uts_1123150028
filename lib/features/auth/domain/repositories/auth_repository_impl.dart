

import 'package:buah_uts_1123150028/core/constants/app_constants.dart';
import 'package:buah_uts_1123150028/core/services/dio_client.dart';
import 'package:buah_uts_1123150028/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<String> verifyFirebaseToken(String firebaseToken) async {
    final response = await DioClient.instance.post(
      AppConstants.verifyToken,
      data: {'firebase_token': firebaseToken},
    );

    final data = response.data['data'] as Map<String, dynamic>;
    return data['access_token'] as String;
  }

}