import 'dart:convert';
import 'dart:developer';

import 'package:go_route_prec/common/api_reponse_model.dart';
import 'package:go_route_prec/core/api_endpoint.dart';
import 'package:go_route_prec/features/profile/data/models/profile_model.dart';
import 'package:go_route_prec/features/profile/domain/repo/profile_repo.dart';
import 'package:http/http.dart';

class ProfileRepoImp implements ProfileRepo {
  @override
  Future<ApiResponse<ProfileModel>> getProfileDetails() async {
    final res = await get(Uri.parse(ApiEndpoint.getUserData(11)));

    log(res.body);

    return ApiResponse.fromJson(
        jsonDecode(res.body), (json) => ProfileModel.fromJson(json));
  }
}
