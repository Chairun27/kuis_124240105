import 'package:flutter/material.dart';
import 'package:kuis_124240105/models/views/home.dart'; 

class Root extends StatelessWidget {
  final String username; 

  const Root({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return HomePage(username: username);
  }
} 