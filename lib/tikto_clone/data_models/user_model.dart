import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String name;
  String email;
  String uuid;
  String propic;

  UserModel(
      {required this.name,
      required this.email,
      required this.uuid,
      required this.propic});
  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "propic": propic,
      "email": email,
      "uuid": uuid,
    };
  }

  static UserModel fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return UserModel(
      email: snapshot['email'],
      name: snapshot['name'],
      propic: snapshot['propic'],
      uuid: snapshot['uuid'],
    );
  }
}
