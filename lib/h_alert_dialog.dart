library h_alert_dialog;

import 'package:flutter/material.dart';

class HAlertDialog {
  static Future showCustomAlertBox({
    required BuildContext context,
    required int timerInSeconds,
    required Color backgroundColor,
    required String title,
    required String description,
    required IconData icon,
    required int iconSize,
    required Color iconColor,
    required String titleFontFamily,
    required double titleFontSize,
    required Color titleFontColor,
    required Color descriptionFontColor,
    required String descriptionFontFamily,
    required double descriptionFontSize,
  }) {
    Future.delayed(Duration(seconds: timerInSeconds), () {
      Navigator.pop(context);
    });

    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            contentPadding: const EdgeInsets.all(0),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: SizedBox(
                      height: 65,
                      width: 65,
                      child: CircleAvatar(
                        radius: 65,
                        backgroundColor: Colors.white,
                        child: Icon(
                          icon,
                          color: iconColor,
                          size: 32,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 22, bottom: 4),
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    style: TextStyle(
                        color: titleFontColor,
                        fontFamily: titleFontFamily,
                        fontSize: titleFontSize,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 14),
                  child: Text(
                    description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: descriptionFontColor,
                        fontFamily: descriptionFontFamily,
                        fontSize: descriptionFontSize,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
            elevation: 10,
          );
        });
  }
}
