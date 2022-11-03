import 'package:flutter/material.dart';
import 'package:h_alert_dialog/h_alert_dialog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'flutter example screen',
      home: ExampleScreen(),
    );
  }
}

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const Center(
          child: Text('Click on Floating action button to see Dialog Box'),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () async {
              await HAlertDialog.showCustomAlertBox(
                  context: context,
                  willDisplayWidget:
                      const Text('My custom alert box, used from example!!'));
            }));
  }
}
