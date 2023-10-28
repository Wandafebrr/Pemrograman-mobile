import 'package:flutter/material.dart';
import 'package:uts/add.dart';
import 'package:uts/home_page.dart';
import 'package:uts/transaction.dart'; // Pastikan nama file sudah benar

class Navbar extends StatefulWidget {
  const Navbar({Key? key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  var tabIndex = 0;

  void changeTabIndex(int index) {
    setState(() {
      tabIndex = index;
      if (index == 1) {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SplashHome()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: const [HomePage(), SplashHome()], // Pastikan nama kelas sudah benar
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 4,
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          currentIndex: tabIndex,
          onTap: changeTabIndex,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey.shade300,
          items: [
            itemBar(Icons.home, "Home"),
            itemBar(Icons.history, "History"),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.transparent,
              ),
              label: "",
            ),
            itemBar(Icons.inbox, "Inbox"),
            itemBar(Icons.switch_account, "Account"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Add()));
        },
        child: const Icon(Icons.qr_code_scanner),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  BottomNavigationBarItem itemBar(IconData icon, String label) {
    return BottomNavigationBarItem(icon: Icon(icon), label: label);
  }
}
