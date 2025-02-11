import 'package:go_route_prec/common/api_reponse_model.dart';
import 'package:go_route_prec/features/profile/data/models/profile_model.dart';
import 'package:go_route_prec/features/profile/domain/repo/profile_repo.dart';

class ProfileRepoImpMock implements ProfileRepo {
  @override
  Future<ApiResponse<ProfileModel>> getProfileDetails() async {
    await Future.delayed(Duration(seconds: 2));
    return ApiResponse.fromJson(
      {
        "statusCode": 200,
        "message": "Success",
        "data": {
          "id": 11,
          "createAt": "2025-02-11T05:24:07.000Z",
          "name": "Goutom Roy",
          "email": "goutomroy771@gmail.com",
          "fullName": "goutomroy770@gmial.com",
          "isActive": false,
          "password": "goutomroy770@gmial.com"
        },
        "error": null
      },
      (json) => ProfileModel.fromJson(json),
    );
  }
}
