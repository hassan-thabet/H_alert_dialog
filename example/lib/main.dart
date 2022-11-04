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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                HAlertDialog.showCustomAlertBox(
                  context: context,
                  backgroundColor: Colors.green,
                  title: 'Success',
                  description:
                      'This is the message that will appear in case of success',
                  icon: Icons.done,
                  iconSize: 32,
                  iconColor: Colors.green,
                  titleFontFamily: 'Raleway',
                  titleFontSize: 22,
                  titleFontColor: Colors.black54,
                  descriptionFontFamily: 'Raleway',
                  descriptionFontColor: Colors.black45,
                  descriptionFontSize: 18,
                  timerInSeconds: 2,
                );
              },
              child: const Text('Show Success Message'),
            ),
            MaterialButton(
              onPressed: () {
                HAlertDialog.showCustomAlertBox(
                  context: context,
                  backgroundColor: Colors.red,
                  title: 'Error',
                  description:
                      'This is the message that will appear in case of Error',
                  icon: Icons.error_outline,
                  iconSize: 32,
                  iconColor: Colors.red,
                  titleFontFamily: 'Raleway',
                  titleFontSize: 22,
                  titleFontColor: Colors.black54,
                  descriptionFontFamily: 'Raleway',
                  descriptionFontColor: Colors.black45,
                  descriptionFontSize: 18,
                  timerInSeconds: 2,
                );
              },
              child: const Text('Show Error Message'),
            ),
            MaterialButton(
              onPressed: () {
                HAlertDialog.showCustomAlertBox(
                  context: context,
                  backgroundColor: Colors.blue,
                  title: 'Info',
                  description:
                      'This is the message that will appear in case of Info',
                  icon: Icons.info_outline,
                  iconSize: 32,
                  iconColor: Colors.blue,
                  titleFontFamily: 'Raleway',
                  titleFontSize: 22,
                  titleFontColor: Colors.black54,
                  descriptionFontFamily: 'Raleway',
                  descriptionFontColor: Colors.black45,
                  descriptionFontSize: 18,
                  timerInSeconds: 2,
                );
              },
              child: const Text('Show Info Message'),
            ),
            MaterialButton(
              onPressed: () {
                HAlertDialog.showCustomAlertBox(
                  context: context,
                  backgroundColor: Colors.yellow,
                  title: 'Warning',
                  description:
                      'This is the message that will appear in case of Warning',
                  icon: Icons.warning_amber_rounded,
                  iconSize: 32,
                  iconColor: Colors.yellow,
                  titleFontFamily: 'Raleway',
                  titleFontSize: 22,
                  titleFontColor: Colors.black54,
                  descriptionFontFamily: 'Raleway',
                  descriptionFontColor: Colors.black45,
                  descriptionFontSize: 18,
                  timerInSeconds: 2,
                );
              },
              child: const Text('Show Warning Message'),
            ),
          ],
        ),
      ),
    );
  }
}
