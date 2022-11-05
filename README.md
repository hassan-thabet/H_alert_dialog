
# h_alert_dialog

A new Flutter package project for simple and beautiful dialogs

## Usage

To use this package, add h_alert_dialog as a dependency in your pubspec.yaml file.
And add this import to your file.

```dart
import 'package:h_alert_dialog/h_alert_dialog.dart';
```

## ScreenShots
<p>
    <img src="https://github.com/hassan-thabet/H_alert_dialog/raw/main/screenshots/success.png" width="260" title="">
    <img src="https://github.com/hassan-thabet/H_alert_dialog/raw/main/screenshots/error.png" width="260" title="">
</p>
<p>
    <img src="https://github.com/hassan-thabet/H_alert_dialog/raw/main/screenshots/info.png" width="260" title="">
    <img src="https://github.com/hassan-thabet/H_alert_dialog/raw/main/screenshots/warning.png" width="260" title="">
</p>

## Example

<p>
    <img src="https://github.com/hassan-thabet/H_alert_dialog/raw/main/screenshots/example.jpg" width="900" title="">
</p>

## Code
```dart
HAlertDialog.showCustomAlertBox(
                      context: context,
                      timerInSeconds: 2,
                      backgroundColor: Colors.green,
                      title: 'Success',
                      description: 'The proccess done successfully',
                      icon: Icons.done,
                      iconSize: 32,
                      iconColor: Colors.green,
                      titleFontFamily: 'Raleway',
                      titleFontSize: 22,
                      titleFontColor: Colors.black54,
                      descriptionFontFamily: 'Raleway',
                      descriptionFontColor: Colors.black45,
                      descriptionFontSize: 18,
                    );
```


