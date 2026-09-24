import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:kleema/strings.dart';
import 'package:kleema/services/weather_services.dart';
import 'package:kleema/model/weather_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kleema',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: Strings.appName),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Strings.savedLocations,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(width: 4.0),
                const Icon(Icons.location_city_rounded, size: 16.0),
              ],
            ),
            const SizedBox(height: 16.0),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12.0),
              ),
              width: double.infinity,

              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '25°C',
                        style: const TextStyle(
                          fontSize: 48.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const Icon(Icons.thermostat, size: 30.0),
                    ],
                  ),

                  const SizedBox(height: 16.0),
                  const Text(
                    Strings.temperature,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.my_location),
            label: Strings.myLocation,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: Strings.savedLocations,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.public),
            label: Strings.maps,
          ),
        ],
      ),
    );
  }
}
