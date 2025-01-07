import 'package:flutter/material.dart';
import '../services/firebase_auth_service.dart';

class AdminLoginViewModel extends ChangeNotifier {
  final FirebaseAuthService _authService = FirebaseAuthService();

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<bool> login(String email, String password) async {
    _isLoading = true;
    notifyListeners();
    try {
      await _authService.signIn(email, password);
      _isLoading = false;
      notifyListeners();
      return true;
    } catch (e) {
      _isLoading = false;
      notifyListeners();
      return false;
    }
  }
}
