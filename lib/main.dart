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
                  'My Location',
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(width: 4.0),
                const Icon(Icons.location_on, size: 16.0),
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

            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12.0),
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 211, 227, 239),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Today',
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(width: 16.0),
                        const Icon(Icons.cloud, size: 16.0),
                        Text(
                          ' 25°C',
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const Icon(Icons.thermostat, size: 16.0),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 211, 227, 239),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Tomorrow: 25B°C',
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(width: 16.0),
                        const Icon(Icons.cloud, size: 16.0),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 211, 227, 239),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Day XX: 25C°C',
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        const SizedBox(width: 16.0),
                        const Icon(Icons.thermostat, size: 16.0),
                      ],
                    ),
                  ),
                ], //children
              ),
            ),
            const SizedBox(height: 16.0),

            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Column(
                      children: const [
                        Icon(Icons.cloud, size: 48.0),
                        SizedBox(height: 8.0),
                        Text(Strings.rainfall),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Column(
                      children: const [
                        Icon(Icons.air, size: 48.0),
                        SizedBox(height: 8.0),
                        Text(Strings.windSpeed),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Column(
                      children: const [
                        Icon(Icons.water_drop, size: 48.0),
                        SizedBox(height: 8.0),
                        Text(Strings.humidity),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Column(
                      children: const [
                        Icon(Icons.wb_sunny, size: 48.0),
                        SizedBox(height: 8.0),
                        Text(Strings.uvIndex),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Column(
                      children: const [
                        Icon(Icons.dark_mode, size: 48.0),
                        SizedBox(height: 8.0),
                        Text(Strings.moonPhase),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Column(
                      children: const [
                        Icon(Icons.speed, size: 48.0),
                        SizedBox(height: 8.0),
                        Text(Strings.pressure),
                      ],
                    ),
                  ),
                ),
              ],
            ),
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
