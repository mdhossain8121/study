class ApiPaginationResponseModel<T> {
  List<T?>? data;
  Links? links;
  bool? status;
  String? message;

  ApiPaginationResponseModel({this.data, this.links, this.status, this.message});

  // ApiPaginationResponseModel.fromJson1(Map<String, dynamic> json, T Function(Map<String, dynamic>) fromJsonT) {
  //   if (json['data'] != null) {
  //     final List<dynamic> jsonDataList = json['data'];
  //     final List<T> data = jsonDataList.map((jsonData) => fromJsonT(jsonData)).toList();
  //   }
  //
  //   this.data = data;
  //   this.links = Links.fromJson(json['links']);
  //   this.status = json['status'];
  //   this.message = json['message'];
  //
  // }

  ApiPaginationResponseModel.fromJson(Map<String, dynamic> json, T Function(dynamic) fromJsonT) {
    // final List<dynamic>? jsonDataList = json['data'];
    // final List<T?>? data = jsonDataList?.map((jsonData) => fromJsonT(jsonData)).toList();

    if (json['data'] != null) {
      data = <T>[];
      json['data'].forEach((v) {
        data!.add(fromJsonT(v));
      });
    }

    this.data = data;
    links = json['links'] != null ? Links.fromJson(json['links']) : null;
    status = json['status'];
    message = json['message'];

  }

  Map<String, dynamic> toJson(Map<String, dynamic> Function(T?) toJsonT) {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => toJsonT(v)).toList();
    }
    if (this.links != null) {
      data['links'] = this.links!.toJson();
    }
    data['status'] = this.status;
    data['message'] = this.message;
    return data;
  }
}

class Links {
  String? first;
  String? last;
  String? prev;
  String? next;

  Links({this.first, this.last, this.prev, this.next});

  Links.fromJson(Map<String, dynamic> json) {
    first = json['first'];
    last = json['last'];
    prev = json['prev'];
    next = json['next'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first'] = this.first;
    data['last'] = this.last;
    data['prev'] = this.prev;
    data['next'] = this.next;
    return data;
  }
}
