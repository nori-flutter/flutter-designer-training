import 'interface_attribute.dart';

class UserItem implements InterfaceAttribute {
  Map<String, dynamic> json;

  UserItem({this.json}) {
//    print('UserItem - json:${this.json}');
  }

  String get uid {
    return this.json['id'];
  }

  String get name {
    return this.json['name'];
  }

  String get description {
    return this.json['description'];
  }

  String getAttribute(String key) {
    return this.json[key];
  }

  factory UserItem.fromJson(Map<String, dynamic> json) {
    return UserItem(json: json);
  }
}
