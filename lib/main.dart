import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; // Pastikan file ini tersedia sesuai konfigurasi Firebase Anda

import 'views/splash_screen.dart'; // Halaman SplashScreen
import 'views/admin_login_screen.dart'; // Halaman LoginPage
import 'views/admin_home_screen.dart'; // Halaman HomePage
import 'views/canteen_data_screen.dart'; // Halaman DataPenjualPage
import 'views/admin_menu_list_screen.dart';
import 'views/seller_profile_view_screen.dart';
import 'views/customer_data_screen.dart';
import 'views/customer_profile_view_screen.dart';
import 'views/canteen_approval_screen.dart';
import 'views/canteen_approval_detail_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Inisialisasi Flutter Binding
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, // Konfigurasi Firebase
  );
  runApp(const MyApp()); // Jalankan aplikasi
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(), // Halaman awal SplashScreen
      routes: {
        '/login': (context) => const AdminLoginScreen(), // Rute untuk LoginPage
        '/home': (context) => const AdminHomeScreen(), // Rute untuk HomePage
        '/canteen_data': (context) => CanteenDataScreen(),
        '/customer_data': (context) => CustomerDataScreen(), // Rute untuk DataPembeliPage
        '/menu_list': (context) => AdminMenuListScreen(),
        '/seller_profile': (context) => SellerProfileViewScreen(),
        '/customer_profile': (context) => CustomerProfileViewScreen(),
        '/canteen_approval': (context) => CanteenApprovalScreen(),
        '/canteen_approval_detail': (context) => CanteenApprovalDetailScreen(),
      },
    );
  }
}
