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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 100.0,
                        height: 100.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue.shade100,
                        ),
                        child: const Text(
                          '25°C',
                          style: TextStyle(
                            fontSize: 32.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      const Text(
                        'Saved City 1',
                        style: TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 100.0,
                        height: 100.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue.shade100,
                        ),
                        child: const Text(
                          '19°C',
                          style: TextStyle(
                            fontSize: 32.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      const Text(
                        'Saved City 2',
                        style: TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 28.0, // Tamanho equilibrado para o botão padrão
          color: Colors.black,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
