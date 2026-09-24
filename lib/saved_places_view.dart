import 'package:flutter/material.dart';
import 'package:kleema/strings.dart';

class SavedPlacesView extends StatefulWidget {
  const SavedPlacesView({super.key});

  @override
  State<SavedPlacesView> createState() => _SavedPlacesViewState();
}

class _SavedPlacesViewState extends State<SavedPlacesView> {
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
                      const Text(
                        '25°C',
                        style: TextStyle(
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
    );
  }
}
