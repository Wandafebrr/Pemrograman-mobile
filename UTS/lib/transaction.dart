import 'package:flutter/material.dart';
import 'package:uts/navbar.dart';

class SplashHome extends StatelessWidget {
  const SplashHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'Transaction History',
              style: TextStyle(color: Colors.black, fontFamily: 'Roboto', fontWeight:FontWeight.bold ),
            ),
            centerTitle: true,

            bottom: TabBar(
              indicatorColor: Color.fromARGB(255, 244, 0, 0),
              tabs: [
                Tab(
                  child: Text('Pending',
                      style:
                          TextStyle(color: Colors.black, fontFamily: 'Inter')),
                ),
                Tab(
                  child: Text('Done', style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ),
          // body: Column(children: [Navbar()]),
          floatingActionButton: FloatingActionButton(
            onPressed: (){},
            backgroundColor: Colors.red,
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(Icons.qr_code_scanner),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                
              IconButton(onPressed: (){}, icon: Icon(Icons.home),),
              IconButton(onPressed: (){}, icon: Icon(Icons.history),),
              IconButton(onPressed: (){}, icon: Icon(Icons.inbox),),
              IconButton(onPressed: (){}, icon: Icon(Icons.manage_accounts),),
            ],),
          ),
        ),
      ),
    );
  }
}

