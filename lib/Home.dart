import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return const Scaffold(
  //     backgroundColor: Colors.greenAccent,
  //     body: Center(
  //       child: Text(
  //         "Home Page",
  //         style: TextStyle(
  //             fontSize: 24,
  //             fontWeight: FontWeight.bold,
  //             color: Colors.blueAccent),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 247, 170, 0),
        title: Text("GBSV"),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      drawer: Drawer(
        backgroundColor: Colors.amber[600],
        child: ListView(
          children: const <Widget>[
            // DrawerHeader(
            //   decoration: BoxDecoration(
            //     color: Color.fromARGB(255, 247, 170, 0),
            //   ),
            //   child: Center(
            //     child: Text(
            //       'Welcome to GBSV',
            //       style: TextStyle(
            //         color: Color.fromARGB(255, 255, 255, 255),
            //         fontSize: 20,
            //       ),
            //     ),
            //   ),
            // ),
            UserAccountsDrawerHeader(
              accountName: Text("Pragnesh Patel"),
              accountEmail: Text("9099081461"),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 170, 0),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Text("abc"),
              ),
            ),
            // ListTile(
            //   title: Text('1'),
            // ),
            ListTile(
              title: Text("My Profile"),
              leading: Icon(Icons.person_2),
            ),
            Divider(
              height: 0.2,
            ),
            ListTile(
              title: Text("Blog"),
              leading: Icon(Icons.contact_page),
            ),
            ListTile(
              leading: Icon(Icons.music_note),
              title: Text("Music"),
            ),
            ListTile(
              leading: Icon(Icons.video_call),
              title: Text("Video"),
            ),
            ListTile(
              leading: Icon(Icons.image),
              title: Text("Daily Darshan"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
            ),
            ListTile(
              leading: Icon(Icons.person_off_sharp),
              title: Text("Logout"),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Image.asset('assets/images/GBSVStart.png'),
            Text(
              "Welcome to GBSV",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            )
          ],
        ),
        //child: Image.asset("/assets/images/GBSVStart.png", width: 50),
      ),
    );
  }
}
