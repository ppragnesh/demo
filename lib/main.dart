import 'package:demo/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(backgroundColor: Colors.white),
      home: SplashScreen(),
    );
  }
}
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber.shade600),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'GBSV'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   // int _counter = 0;

//   // void _incrementCounter() {
//   //   setState(() {
//   //_counter++;
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       // floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
//       drawer: Drawer(
//         backgroundColor: Colors.amber[600],
//         child: ListView(
//           children: const <Widget>[
//             // DrawerHeader(
//             //   decoration: BoxDecoration(
//             //     color: Color.fromARGB(255, 247, 170, 0),
//             //   ),
//             //   child: Center(
//             //     child: Text(
//             //       'Welcome to GBSV',
//             //       style: TextStyle(
//             //         color: Color.fromARGB(255, 255, 255, 255),
//             //         fontSize: 20,
//             //       ),
//             //     ),
//             //   ),
//             // ),
//             UserAccountsDrawerHeader(
//               accountName: Text("Pragnesh Patel"),
//               accountEmail: Text("9099081461"),
//               decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 255, 170, 0),
//               ),
//               currentAccountPicture: CircleAvatar(
//                 backgroundColor: Colors.yellow,
//                 child: Text("abc"),
//               ),
//             ),
//             // ListTile(
//             //   title: Text('1'),
//             // ),
//             ListTile(
//               title: Text("My Profile"),
//               leading: Icon(Icons.person_2),
//             ),
//             Divider(
//               height: 0.2,
//             ),
//             ListTile(
//               title: Text("Blog"),
//               leading: Icon(Icons.contact_page),
//             ),
//             ListTile(
//               leading: Icon(Icons.music_note),
//               title: Text("Music"),
//             ),
//             ListTile(
//               leading: Icon(Icons.video_call),
//               title: Text("Video"),
//             ),
//             ListTile(
//               leading: Icon(Icons.image),
//               title: Text("Daily Darshan"),
//             ),
//             ListTile(
//               leading: Icon(Icons.settings),
//               title: Text("Setting"),
//             ),
//             ListTile(
//               leading: Icon(Icons.person_off_sharp),
//               title: Text("Logout"),
//             ),
//           ],
//         ),
//       ),
//       body: Center(
//         child: Column(
//           children: <Widget>[
//             Image.asset('assets/images/GBSVStart.png'),
//           ],
//         ),
//         //child: Image.asset("/assets/images/GBSVStart.png", width: 50),
//       ),

//       //   floatingActionButton: FloatingActionButton(
//       //     onPressed: q_incrementCounter,
//       //     tooltip: 'Increment',
//       //     child: const Icon(Icons.add),
//       //   ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
