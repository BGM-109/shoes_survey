import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomeScreenViewModel extends ChangeNotifier {
  final CollectionReference collection =
  FirebaseFirestore.instance.collection('categories');

  Stream<QuerySnapshot> getCategory() {
    return collection.snapshots();
  }
}
