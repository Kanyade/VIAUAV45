import 'package:flutter/material.dart';
import 'package:flutter_l10n/domain/model/santa.dart';
import 'package:flutter_l10n/presentation/page/home/widgets/santa_item.dart';

import '../../../common_imports.dart';

class HomePage extends StatelessWidget {
  final santa = Santa(
      name: "Santa Claus",
      avatar: "assets/icon/santa.png",
      outfit: ["Hat", "tie"],
      description:
          "Santa Claus is generally depicted as a portly, jolly, white-bearded man, often with spectacles, wearing a red coat with white fur collar and cuffs, white-fur-cuffed red trousers, red hat with white fur, and black leather belt and boots, carrying a bag full of gifts for children. He is commonly portrayed as laughing in a way that sounds like ho ho ho. ");

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              l10n.homeTitle,
              style: TextStyle(fontSize: 60),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Current language: ",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Text(
                  "English",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Image.asset(
              "assets/icon/flag/usa.png",
              height: 40,
              width: 60,
            ),
            SizedBox(height: 32),
            Text(
              "Your santa",
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 8),
            SantaItem(
              santa: santa,
            ),
          ],
        ),
      ),
    );
  }
}
