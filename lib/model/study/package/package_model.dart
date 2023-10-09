class PackageList{
  List<PackageListItemModel?>? packageList;

  PackageList.fromJson(List<PackageListItemModel?>? json){
    print("PackageList.fromJson $json");
    this.packageList = json;
  }

  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = new Map();
    if(this.packageList!=null){
      data['data'] = this.packageList?.map((v) => v?.toJson()).toList();
    }
    return data;
  }
}


class PackageListItemModel {
  int? id;
  String? name;
  String? price;

  PackageListItemModel({this.id, this.name, this.price});

  PackageListItemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['price'] = this.price;
    return data;
  }
}