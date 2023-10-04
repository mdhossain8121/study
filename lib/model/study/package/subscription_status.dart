class SubscriptionStatus{
  bool? subscribed;

  SubscriptionStatus({
    this.subscribed
  });

  SubscriptionStatus.fromJson(Map<String,dynamic> json){
    this.subscribed = json['subscribed'];
  }

  Map<String,dynamic> toJson(){
    final Map<String,dynamic> map = Map();
    map['subscribed'] = this.subscribed;
    return map;
  }
}