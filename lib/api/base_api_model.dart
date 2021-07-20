class BaseApiModel {
  String? message;
  int? code;
  bool? success;

  BaseApiModel({this.code, this.message, this.success});

  BaseApiModel.fromJson(Map<String, dynamic> json) {
    code = json["code"];
    message = json["message"];
    success = json["success"];
  }


  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data["message"] = message;
    data["code"] = code;
    data["success"] = success;
    return data;
  }
}
