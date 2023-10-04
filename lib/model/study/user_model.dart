class UserModel {
  int? userId;
  String? userTypeId;
  String? userRoleId;
  String? professionId;
  String? cityId;
  String? stateId;
  String? countryId;
  String? username;
  String? email;
  String? emailVerified;
  String? dpOriginal;
  String? dp300;
  String? dp62;
  String? resetCode;
  String? resetCodeSent;
  String? points;
  String? balance;
  String? stats;
  String? verified;
  String? loginToken;
  String? tos;
  String? passwordTry;
  String? loginLocked;
  String? callPermitStatus;
  String? callAffiliation;
  String? googleId;
  String? chatPermit;
  String? lastActive;
  String? activeStatus;
  String? viewCount;
  String? createdAt;
  String? updatedAt;
  String? token;
  String? fullName;

  UserModel(
      {this.userId,
        this.userTypeId,
        this.userRoleId,
        this.professionId,
        this.cityId,
        this.stateId,
        this.countryId,
        this.username,
        this.email,
        this.emailVerified,
        this.dpOriginal,
        this.dp300,
        this.dp62,
        this.resetCode,
        this.resetCodeSent,
        this.points,
        this.balance,
        this.stats,
        this.verified,
        this.loginToken,
        this.tos,
        this.passwordTry,
        this.loginLocked,
        this.callPermitStatus,
        this.callAffiliation,
        this.googleId,
        this.chatPermit,
        this.lastActive,
        this.activeStatus,
        this.viewCount,
        this.createdAt,
        this.updatedAt,
        this.token,
        this.fullName});

  UserModel.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    userTypeId = json['user_type_id'];
    userRoleId = json['user_role_id'];
    professionId = json['profession_id'];
    cityId = json['city_id'];
    stateId = json['state_id'];
    countryId = json['country_id'];
    username = json['username'];
    email = json['email'];
    emailVerified = json['email_verified'];
    dpOriginal = json['dp_original'];
    dp300 = json['dp_300'];
    dp62 = json['dp_62'];
    resetCode = json['reset_code'];
    resetCodeSent = json['reset_code_sent'];
    points = json['points'];
    balance = json['balance'];
    stats = json['stats'];
    verified = json['verified'];
    loginToken = json['login_token'];
    tos = json['tos'];
    passwordTry = json['password_try'];
    loginLocked = json['login_locked'];
    callPermitStatus = json['call_permit_status'];
    callAffiliation = json['call_affiliation'];
    googleId = json['google_id'];
    chatPermit = json['chat_permit'];
    lastActive = json['last_active'];
    activeStatus = json['active_status'];
    viewCount = json['view_count'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    token = json['token'];
    fullName = json['full_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['user_type_id'] = this.userTypeId;
    data['user_role_id'] = this.userRoleId;
    data['profession_id'] = this.professionId;
    data['city_id'] = this.cityId;
    data['state_id'] = this.stateId;
    data['country_id'] = this.countryId;
    data['username'] = this.username;
    data['email'] = this.email;
    data['email_verified'] = this.emailVerified;
    data['dp_original'] = this.dpOriginal;
    data['dp_300'] = this.dp300;
    data['dp_62'] = this.dp62;
    data['reset_code'] = this.resetCode;
    data['reset_code_sent'] = this.resetCodeSent;
    data['points'] = this.points;
    data['balance'] = this.balance;
    data['stats'] = this.stats;
    data['verified'] = this.verified;
    data['login_token'] = this.loginToken;
    data['tos'] = this.tos;
    data['password_try'] = this.passwordTry;
    data['login_locked'] = this.loginLocked;
    data['call_permit_status'] = this.callPermitStatus;
    data['call_affiliation'] = this.callAffiliation;
    data['google_id'] = this.googleId;
    data['chat_permit'] = this.chatPermit;
    data['last_active'] = this.lastActive;
    data['active_status'] = this.activeStatus;
    data['view_count'] = this.viewCount;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['token'] = this.token;
    data['full_name'] = this.fullName;
    return data;
  }
}
