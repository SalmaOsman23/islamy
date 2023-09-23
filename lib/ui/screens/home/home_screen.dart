import 'package:flutter/material.dart';
import 'package:islamy/ui/utilits/app_assets.dart';
import 'package:islamy/ui/utilits/app_colors.dart';
import 'package:islamy/ui/utilits/app_theme.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "Home Screen";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppAssets.background,
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text("Islami", style: AppTheme.appBarTitleTextStyle),
          ),
          bottomNavigationBar: buildBottomNavigationBar(),
        ),
      ],
    );
  }

  Widget buildBottomNavigationBar() => Theme(
        data: ThemeData(canvasColor: AppColors.primary),
        child: BottomNavigationBar(
            backgroundColor: AppColors.primary,
            selectedItemColor: AppColors.accent,
            selectedFontSize: 32,
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AppAssets.icRadio)),
                  label: "Radio"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AppAssets.icSebha)),
                  label: "Sebha"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AppAssets.icHadeth)),
                  label: "Hadeth"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AppAssets.icQuran)),
                  label: "Quran"),
            ]),
      );
}
