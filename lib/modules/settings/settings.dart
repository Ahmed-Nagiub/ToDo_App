import 'package:flutter/material.dart';
import 'package:todo_app/modules/settings/Theme_bottom_sheet.dart';
import 'package:todo_app/modules/settings/language_bottom_sheet.dart';

class settingsScreen extends StatelessWidget {
  static const String routeName = 'SettingsScreen';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(223, 236, 219, 1.0),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Language :',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                showLanguageBottomSheet(context);
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'English',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          ?.copyWith(color: Colors.black),
                    ),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Theme :',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                showThemeBottomSheet(context);
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Light',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          ?.copyWith(color: Colors.black),
                    ),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );

  }
  void showLanguageBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return LanguageBottomSheet();
        });
  }

  void showThemeBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ThemeBottomSheet();
        });
  }
}
