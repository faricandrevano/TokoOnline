class Meta {
  Meta({
    this.page,
    this.perPage,
    this.totalData,
    this.message,
    this.statusCode,
  });

  Meta.fromJson(Map<String, dynamic> json) {
    page = json['page'] as int;
    perPage = json['perPage'] as int;
    totalData = json['totalData'] as int;
    message = json['message'] as String;
    statusCode = json['statusCode'] as int;
  }

  int? page;
  int? perPage;
  int? totalData;
  String? message;
  int? statusCode;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['page'] = page;
    data['perPage'] = perPage;
    data['totalData'] = totalData;
    data['message'] = message;
    data['statusCode'] = statusCode;
    return data;
  }
}
