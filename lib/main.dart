import 'package:flutter/material.dart';

void main() {
  runApp(const OneButtonApp());
}

class OneButtonApp extends StatelessWidget {
  const OneButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'One Button',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const OneButtonPage(),
    );
  }
}

class OneButtonPage extends StatefulWidget {
  const OneButtonPage({super.key});

  @override
  State<OneButtonPage> createState() => _OneButtonPageState();
}

class _OneButtonPageState extends State<OneButtonPage> {
  int _tapCount = 0;

  void _handleTap() {
    setState(() => _tapCount++);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              _tapCount == 0
                  ? 'Press the button to begin'
                  : 'Pressed $_tapCount ${_tapCount == 1 ? 'time' : 'times'}',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: _handleTap,
              child: const Text('Click me'),
            ),
          ],
        ),
      ),
    );
  }
}
