class ApiResponseModel<T> {
  T? data;
  bool? status;
  String? message;

  ApiResponseModel({this.data, this.status, this.message});

  ApiResponseModel.fromJson(Map<String, dynamic> json, T Function(dynamic) fromJsonT) {
    if (json['data'] != null) {
      data = fromJsonT(json['data']);
    }

    this.data = data;
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson(Map<String, dynamic> Function(T?) toJsonT) {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      // data['data'] = this.data!.map((v) => toJsonT(v)).toList();
      data['data'] = toJsonT(this.data);
    }
    data['status'] = this.status;
    data['message'] = this.message;
    return data;
  }
}
