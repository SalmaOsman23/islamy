import 'dart:math';

import 'package:flutter/material.dart';
import 'package:islamy/ui/utilits/app_assets.dart';
import 'package:islamy/ui/utilits/app_colors.dart';
import 'package:islamy/ui/utilits/constants.dart';

class SebhaTab extends StatefulWidget {
  static const String routeName = "Sebha Tab";

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  int currentIndex = 0;
  double rotateAngle = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            //Image.asset(AppAssets.sebhaHead),
            Transform.rotate(
                angle: rotateAngle * (pi / 180),
                child: Image.asset(AppAssets.bodySebha)),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "عدد التسبيحات",
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Column(
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      handleFloatingActionButton();
                      rotateImage();
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: AppColors.primary,
                    child: Text(
                      "$counter",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(16),
                    child: Text(
                      Constants.AzkarNames[currentIndex],
                      style: TextStyle(color: AppColors.white),
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void handleFloatingActionButton() {
    setState(() {
      counter++;
      if (counter > 33) {
        counter = 0;
        currentIndex = (currentIndex + 1) % Constants.AzkarNames.length;
      }
    });
  }

  void rotateImage() {
    rotateAngle += 30;
    setState(() {});
  }
}
