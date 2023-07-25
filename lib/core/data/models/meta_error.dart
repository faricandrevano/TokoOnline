class MetaError {
  MetaError({this.statusCode, this.errorCode, this.message, this.errors});

  factory MetaError.fromJson(Map<String, dynamic> json) => MetaError(
        statusCode: json['statusCode'] as int?,
        errorCode: json['errorCode'] as String?,
        message: json['message'] as String?,
        errors: json['errors'] as List<dynamic>?,
      );

  int? statusCode;
  String? errorCode;
  String? message;
  List<dynamic>? errors;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['statusCode'] = statusCode;
    data['errorCode'] = errorCode;
    data['message'] = message;
    data['errors'] = errors;
    return data;
  }
}
