import 'package:flutter/material.dart';
import 'package:kleema/strings.dart';

class MapsView extends StatefulWidget {
  const MapsView({super.key});

  @override
  State<MapsView> createState() => _MapsViewState();
}

class _MapsViewState extends State<MapsView> {
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
                  Strings.maps,
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
                      Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue.shade100,
                        ),
                        child: const Icon(
                          Icons.location_city_rounded,
                          size: 48.0,
                        ),
                      ),
                      const SizedBox(width: 16.0),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue.shade100,
                        ),
                        child: const Icon(
                          Icons.location_city_rounded,
                          size: 48.0,
                        ),
                      ),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
