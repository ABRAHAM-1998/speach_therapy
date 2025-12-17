import 'package:flutter/material.dart';

void main() {
  runApp(const SpeakEaseApp());
}

class SpeakEaseApp extends StatelessWidget {
  const SpeakEaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SpeakEase',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: 'Roboto',
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SpeakEase – Speech Therapy'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.record_voice_over,
              size: 100,
              color: Colors.indigo,
            ),
            const SizedBox(height: 20),
            const Text(
              'Improve Your Speech\nWith Smart Therapy',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TherapyScreen(),
                  ),
                );
              },
              child: const Text(
                'Start Therapy',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TherapyScreen extends StatelessWidget {
  const TherapyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Therapy Session'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.mic,
              size: 80,
              color: Colors.green,
            ),
            const SizedBox(height: 20),
            const Text(
              'Say the word clearly:',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            const Text(
              '"APPLE"',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              icon: const Icon(Icons.mic),
              label: const Text('Start Recording'),
              onPressed: () {
                // Speech recognition logic will be added here
              },
            ),
          ],
        ),
      ),
    );
  }
}
