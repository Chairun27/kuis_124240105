import 'package:flutter/material.dart';
import 'package:kuis_124240105/models/views/home.dart'; 
// import 'package:kuis_124240105/models/views/profile.dart'; 

class Root extends StatelessWidget {
  final String username; 

  const Root({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return HomePage(username: username);
  }
} 


// class Root extends StatefulWidget {
//   final String username;
//   const Root({super.key, required this.username});

//   @override
//   State<Root> createState() => _RootState(); 
// } 

// class _RootState extends State<Root> {
//   int _selectedIndex = 0; 

//   @override 
//   Widget build(BuildContext context) {
//     final List<Widget> pages = [HomePage(), ProfilePage()];  

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Selamat Datang, ${widget.username}", 
//         style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), 
//       ),
//         backgroundColor: Colors.blue, 
//       ), 

//       body: pages[_selectedIndex], 

//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedIndex,
//         onTap: (index) {
//           setState(() {
//             _selectedIndex = index; 
//           });
//         },

//         items: [
//           BottomNavigationBarItem(
//             label: "Home",
//             icon: Icon(Icons.home)
//           ), 
//           BottomNavigationBarItem(
//             label: "Profile",
//             icon: Icon(Icons.person)
//           ),
//         ]
//       ),
//     );
//   }
// }