import 'package:cilore/models/destination_model.dart';
import 'package:cilore/screens/aboutpage.dart';
import 'package:cilore/screens/detaildestinasi.dart';
import 'package:cilore/screens/foodpage.dart';
import 'package:cilore/screens/tourpage.dart';
import 'package:cilore/screens/wishpage.dart';
import 'package:cilore/utils/const.dart';
import 'package:cilore/widgets/popular_destination.dart';
import 'package:cilore/widgets/rekomendasi_destination.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(35, 21, 21, 1),
      body: Stack(
        children: [
          Opacity(
            opacity: 0.3,
            child:
          Image.network(
          "https://ucarecdn.com/0e34b478-b993-4d58-a88d-a765b8b8f5a4/backround.png",
          width: screenSize.width,
          height: screenSize.height,
          fit: BoxFit.cover,
          ),

          ),
          Column(
            children: [
              buildAppBar(),
              Expanded(
                child: _selectedNavbar == 0
                    ? buildHomeContent() // Konten halaman Home
                    : _selectedNavbar == 1
                    ? Tourpage()
                    : _selectedNavbar == 2
                    ? WishPage()
                    : _selectedNavbar == 3
                    ? Foodpage()
                    : _selectedNavbar == 4
                    ? AboutPage()
                    : Center(
                        child: Text(
                          'Halaman ${_selectedNavbar + 1} belum tersedia',
                          style: const TextStyle(
                            fontSize: 24,
                            color: Color(0xFF6B4E3D),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedNavbar,
        onTap: _changeSelectedNavBar,
        items: [
          _buildBottomNavItem(Icons.home, 'Home'),
          _buildBottomNavItem(Icons.map, 'Tour'),
          _buildBottomNavItem(Icons.favorite, 'Wishlist'),
          _buildBottomNavItem(Icons.food_bank, 'Food'),
          _buildBottomNavItem(Icons.person, 'About'),
        ],
        selectedItemColor: const Color.fromRGBO(61, 212, 174, 1),
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavItem(IconData icon, String label) {
    return BottomNavigationBarItem(
      icon: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon),
          SizedBox(height: 4), // Atur jarak antara ikon dan teks
          Text(label),
        ],
      ),
      label: '', // Kosongkan label karena kita sudah menggunakan widget kustom
    );
  }

Widget buildAppBar() {
  if (_selectedNavbar == 2 || _selectedNavbar == 4) {
    return Container(
      height: 90, 
      decoration:
      BoxDecoration(
      image: DecorationImage(
        image: NetworkImage('https://ucarecdn.com/0e34b478-b993-4d58-a88d-a765b8b8f5a4/backround.png'),
        fit: BoxFit.cover,
      ),
      ),

      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Colors.black.withOpacity(0.3),
            ),
          ),
          SafeArea(
            child: Center(
              child: Text(
                _selectedNavbar == 2 ? 'Wishlist Page' : 'About Page',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: "NunitoSans",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // AppBar untuk halaman lainnya (default dengan search bar)
  return Container(
    height: 160,
    decoration: 
     BoxDecoration(
      image: DecorationImage(
        image: NetworkImage('https://ucarecdn.com/0e34b478-b993-4d58-a88d-a765b8b8f5a4/backround.png'),
        fit: BoxFit.cover,
      ),
      ),
    child: Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            color: Colors.black.withOpacity(0.3),
          ),
        ),
        SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
              child: Column(
                children: [
                  Text(
                    'Cilore App',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: "NunitoSans",
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 207, 138), // Warna border
                        width: 3, // Ketebalan border
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.grey, size: 28),
                        SizedBox(width: 8),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                color: Colors.grey.withOpacity(0.6),
                                fontSize: 18,
                                fontFamily: "NunitoSans",
                              ),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.zero,
                            ),
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontFamily: "NunitoSans",
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(Icons.nightlight_round, color: Colors.grey, size: 28),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}




  Widget buildHomeContent() {
    List<TravelDestination> popular = listDestination
        .where((element) => element.category == "popular")
        .toList();
    List<TravelDestination> rekomendasi = listDestination
        .where((element) => element.category == "makanan")
        .toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Tempat Populer",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "NunitoSans",
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              Text(
                "Lihat Semua",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "NunitoSans",
                  color: blueTextColor,
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(bottom: 20, left: 15),
          child: Row(
            children: List.generate(
              popular.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 15),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetailDestinasi(destination: popular[index]),
                      ),
                    );
                  },
                  child: PopularDestination(
                    destination: popular[index],
                  ),
                ),
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Makanan Viral Terkini",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: "NunitoSans",
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              Text(
                "Lihat Semua",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "NunitoSans",
                  color: blueTextColor,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: List.generate(
                rekomendasi.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DetailDestinasi(
                            destination: rekomendasi[index],
                          ),
                        ),
                      );
                    },
                    child: RekomendasiDestination(
                      destination: rekomendasi[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}