import 'package:dio/dio.dart';

import '../../ui/dashboard/model/req_users.dart';
import '../../ui/dashboard/model/res_users.dart';
import '../api_constant.dart';
import '../api_service.dart';
import '../base_error_model.dart';

class CommonApiManager {
  static final CommonApiManager _instance = CommonApiManager._internal();

  factory CommonApiManager() {
    return _instance;
  }

  CommonApiManager._internal();

  Future getUserData(ReqUsers req) async {
    try {
      final response =
          await ApiService().get(ApiConstant.apiUsers, params: req.toJson());
      return ResUsers.fromJson(response.data);
    } on DioError catch (error) {
      return BaseError.fromJson(error.response?.data ?? {});
    }
  }
}
