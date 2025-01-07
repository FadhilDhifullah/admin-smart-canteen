// views/admin_home_screen.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/admin_home_viewmodel.dart';


class AdminHomeScreen extends StatefulWidget {
  const AdminHomeScreen({Key? key}) : super(key: key);

  @override
  State<AdminHomeScreen> createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {
  bool _isMenuVisible = false;

  void _toggleMenu() {
    setState(() {
      _isMenuVisible = !_isMenuVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AdminHomeViewModel(),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.green.shade200,
              child: const Icon(Icons.lightbulb, color: Colors.white),
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: _toggleMenu,
            ),
          ],
        ),
        body: Stack(
          children: [
            Consumer<AdminHomeViewModel>(
              builder: (context, viewModel, child) {
                if (viewModel.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                return Align(
                  alignment: const Alignment(0, -0.4),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildStatCard('Total Penjual', viewModel.sellerCount.toString()),
                      const SizedBox(height: 20),
                      _buildStatCard('Total Pembeli', viewModel.buyerCount.toString()),
                    ],
                  ),
                );
              },
            ),
            if (_isMenuVisible)
              Positioned(
                top: 56,
                right: 8,
                child: Container(
                  width: 206,
                  height: 367,
                  decoration: BoxDecoration(
                    color: const Color(0xFF052219),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Kelola Data',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      _buildCenteredButton('Data Kantin', () {
                        Navigator.pushNamed(context, '/canteen_data');
                      }),
                      const SizedBox(height: 8),
                      _buildCenteredButton('Data Pembeli', () {
                        Navigator.pushNamed(context, '/customer_data');
                      }),
                      const SizedBox(height: 8),
                      _buildCenteredButton('Persetujuan', () {
                        Navigator.pushNamed(context, '/canteen_approval');
                      }, showRedDot: true),
                      const Spacer(),
                      TextButton.icon(
                        onPressed: () {
                          // Aksi logout
                        },
                        icon: const Icon(Icons.logout, color: Colors.white),
                        label: const Text(
                          'Keluar',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard(String title, String count) {
    return Container(
      width: 200,
      height: 130,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(93, 170, 128, 0.41),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          const Spacer(),
          Center(
            child: Text(
              count,
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _buildCenteredButton(String label, VoidCallback onPressed, {bool showRedDot = false}) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        minimumSize: const Size(double.infinity, 35),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 0,
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: const TextStyle(color: Colors.black),
          ),
          if (showRedDot)
            const SizedBox(width: 5),
          if (showRedDot)
            Container(
              width: 6,
              height: 6,
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
        ],
      ),
    );
  }
}
