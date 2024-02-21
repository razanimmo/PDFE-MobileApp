import 'package:pdfe/model/mediaModel.dart';

class UserModel {
  String? id;
  String? name;
  String? email;
  String? profilePicture;
  String? phoneNumber;
  Membership? membership;
  List<MediaModel>? files;
  bool? isVerified;
  bool? profileCompleted;

  UserModel(
      {this.id,
      this.name,
      this.email,
      this.profilePicture,
      this.phoneNumber,
      this.membership,
      this.files,
      this.isVerified,
      this.profileCompleted});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    profilePicture = json['profilePicture'];
    phoneNumber = json['PhoneNumber'];
    membership = json['membership'] != null
        ? new Membership.fromJson(json['membership'])
        : null;
    if (json['files'] != null) {
      files = <MediaModel>[];
      json['files'].forEach((v) {
        files!.add(MediaModel.fromJSON(v));
      });
    }
    isVerified = json['isVerified'];
    profileCompleted = json['profileCompleted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['profilePicture'] = this.profilePicture;
    data['PhoneNumber'] = this.phoneNumber;
    if (this.membership != null) {
      data['membership'] = this.membership!.toJson();
    }
    if (this.files != null) {
      data['files'] = this.files!.map((v) => v.toJSON(v)).toList();
    }
    data['isVerified'] = this.isVerified;
    data['profileCompleted'] = this.profileCompleted;
    return data;
  }
}

class Membership {
  String? type;
  String? sId;
  String? daysLeft;
  int? createOn;
  int? expireyDate;

  Membership(
      {this.type, this.sId, this.daysLeft, this.createOn, this.expireyDate});

  Membership.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    sId = json['_id'];
    daysLeft = json['daysLeft'];
    createOn = json['createOn'];
    expireyDate = json['expireyDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['_id'] = this.sId;
    data['daysLeft'] = this.daysLeft;
    data['createOn'] = this.createOn;
    data['expireyDate'] = this.expireyDate;
    return data;
  }
}
