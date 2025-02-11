// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:go_route_prec/common/api_reponse_model.dart';
import 'package:go_route_prec/features/profile/data/models/profile_model.dart';
import 'package:go_route_prec/features/profile/domain/repo/profile_repo.dart';

class ProfileUsecase {
  final ProfileRepo repo;
  ProfileUsecase(this.repo);

  Future<ApiResponse<ProfileModel>> callGetProfileDetails() async {
    return await repo.getProfileDetails();
  }
}
