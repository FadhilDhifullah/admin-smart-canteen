import 'package:flutter/material.dart';

class AdminMenuListScreen extends StatelessWidget {
  const AdminMenuListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF052219),
        title: const Text(
          'Data Kantin',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // Kembali ke halaman sebelumnya
          },
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Menu Penjualan',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: ListView.separated(
                    itemCount: 4, // Jumlah item
                    separatorBuilder: (context, index) => const Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    itemBuilder: (context, index) {
                      // Data untuk setiap item
                      final menuData = [
                        {
                          'imageUrl':
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQv3I9R727jqcWVSyzFEx1A8rLDE4LZ1UyY7Q&s',
                          'title': 'Nasi Rawon',
                          'price': 'Rp. 8000',
                        },
                        {
                          'imageUrl':
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkn0q-iSrLEjAKnh48JjpiF1l_Dzza88TfWA&s',
                          'title': 'Nasi Soto',
                          'price': 'Rp. 8000',
                        },
                        {
                          'imageUrl':
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQScsCAMxiS6YFgSw248Ny1EIpOYVez-4RAVw&s',
                          'title': 'Nasi Pecel',
                          'price': 'Rp. 8000',
                        },
                        {
                          'imageUrl':
                              'https://www.dapurkobe.co.id/wp-content/uploads/nasi-telur-sentosa.jpg',
                          'title': 'Nasi Telur',
                          'price': 'Rp. 8000',
                        },
                      ];

                      // Membuat item menu
                      return _buildMenuItem(
                        imageUrl: menuData[index]['imageUrl']!,
                        title: menuData[index]['title']!,
                        price: menuData[index]['price']!,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 16,
            right: 16,
            child: ElevatedButton.icon(
              onPressed: () {
                // Navigasi ke profil penjual
                Navigator.pushNamed(context, '/seller_profile');
              },
              icon: const Icon(Icons.person),
              label: const Text('Lihat Profil'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF052219),
                foregroundColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required String imageUrl,
    required String title,
    required String price,
  }) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            imageUrl,
            width: 61,
            height: 61,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                price,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
