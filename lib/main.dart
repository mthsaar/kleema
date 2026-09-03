import 'package:flutter/material.dart';
import 'package:kleema/strings.dart';
import 'package:kleema/services/weather_services.dart';
import 'package:kleema/services/weather_model.dart';

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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple),
              child: Text(
                'Kleema',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(leading: Icon(Icons.message), title: Text('Messages')),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12.0),
              ),
              width: double.infinity,

              child: Column(
                children: [
                  const Text(
                    Strings.temperature,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(height: 16.0),
                  const Icon(Icons.thermostat, size: 48.0),
                ],
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
