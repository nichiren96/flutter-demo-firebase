import 'package:cloud_firestore/cloud_firestore.dart';

class DataService {
  void getData() {
    FirebaseFirestore.instance
        .collection("recipes")
        .get()
        .then((value) => print(value.docs[0].data()));
  }
}
