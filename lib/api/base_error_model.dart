class BaseError {
  String? message;
  String? error;
  int? code;

  BaseError({this.code, this.error, this.message});

  BaseError.fromJson(Map<String, dynamic> json) {
    code = json["code"];
    error = json["error"];
    message = json["message"];
  }


  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data["msg"] = message;
    data["error"] = error;
    data["code"] = code;
    return data;
  }
}
