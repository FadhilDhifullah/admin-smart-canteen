import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<int> getSellerCount() async {
    try {
      final QuerySnapshot snapshot = await _firestore.collection('sellers').get();
      return snapshot.docs.length;
    } catch (e) {
      throw Exception('Failed to fetch seller count: $e');
    }
  }
}
