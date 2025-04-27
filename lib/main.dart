import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Art\'s Portfolio',
      debugShowCheckedModeBanner: false,
      theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      color: Colors.grey.shade300,
                      image: const DecorationImage(
                        image: AssetImage('assets/profile-modified.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20, width: 15,),
                  Text(
                    "art's portfolio",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: _isDarkMode ? Colors.white : Colors.black87,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Theme Toggle
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(_isDarkMode ? Icons.dark_mode : Icons.light_mode),
                  const SizedBox(width: 10),
                  Text(_isDarkMode ? "Dark Mode" : "Light Mode"),
                  const SizedBox(width: 10),
                  Switch(
                    value: _isDarkMode,
                    onChanged: (value) {
                      _toggleTheme();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}