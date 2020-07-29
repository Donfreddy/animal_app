import 'package:cloud_firestore/cloud_firestore.dart';

class QueryData {
  static void getAllAnaimals() async {
    Query q = Firestore.instance.collection('animals');

    QuerySnapshot querySnapshot = await q.getDocuments();
    querySnapshot.documents;
  }
}
