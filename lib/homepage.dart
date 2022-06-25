import 'package:flutter/material.dart';
import 'package:tubes_abp/destinasi.dart';
import 'package:tubes_abp/kuliner.dart';
import 'package:tubes_abp/page/account.dart';
import 'package:tubes_abp/page/dashboard.dart';
import 'package:tubes_abp/page/pemesanan.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    UserDashboard(),
    UserPemesanan(),
    UserAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('S O L O  R A Y A'),
        backgroundColor: Color.fromARGB(255, 232, 182, 1),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  'P I L I H A N'
                )),
            ),
            ListTile(
              leading: Icon(Icons.fastfood),
              title: Text('Kuliner',
              style: TextStyle(fontSize: 20),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Kuliner()));
              },
            ),
            ListTile(
              leading: Icon(Icons.holiday_village),
              title: Text('Destinasi',
              style: TextStyle(fontSize: 20),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Destinasi()));
              },
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 232, 182, 1),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Pemesanan'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Acoount'),
        ],
      ),
    );
  }
}