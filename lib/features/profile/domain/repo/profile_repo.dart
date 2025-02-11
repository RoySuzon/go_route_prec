import 'package:go_route_prec/common/api_reponse_model.dart';
import 'package:go_route_prec/features/profile/data/models/profile_model.dart';

abstract class ProfileRepo {
  Future<ApiResponse<ProfileModel>> getProfileDetails();
}
