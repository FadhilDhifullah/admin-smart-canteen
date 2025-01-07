// viewmodels/admin_home_viewmodel.dart

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AdminHomeViewModel extends ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  int _sellerCount = 0;
  int _buyerCount = 0;
  bool _isLoading = true;

  int get sellerCount => _sellerCount;
  int get buyerCount => _buyerCount;
  bool get isLoading => _isLoading;

  AdminHomeViewModel() {
    fetchCounts();
  }

  Future<void> fetchCounts() async {
    _isLoading = true;
    notifyListeners();
    try {
      // Mengambil jumlah penjual
      QuerySnapshot sellerSnapshot = await _firestore.collection('sellers').get();
      _sellerCount = sellerSnapshot.size;

      // Mengambil jumlah pembeli
      QuerySnapshot buyerSnapshot = await _firestore.collection('pembeli').get();
      _buyerCount = buyerSnapshot.size;
    } catch (e) {
      print('Error fetching counts: $e');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
