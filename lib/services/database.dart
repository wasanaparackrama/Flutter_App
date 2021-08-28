import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  getUserByUsername(String userName) async {
    return await Firestore.instance
        .collection("users")
        .where("name", isEqualTo: userName)
        .getDocuments();
  }

  uploadUserInfo(UserMap) {
    Firestore.instance.collection("users").add(UserMap).catchError((e) {
      print(e.toString());
    });
  }

  createChatRoom(String chatRoomId, chatRoomMap) {
    Firestore.instance
        .collection("ChatRoom")
        .document(chatRoomId)
        .setData(chatRoomMap)
        .catchError((e) {
      print(e.toString());
    });
  }
}