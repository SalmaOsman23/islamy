import 'package:flutter/material.dart';
import 'package:islamy/ui/screens/home/tabs/ahadeth_tab/ahadeth_tab.dart';
import 'package:islamy/ui/screens/home/tabs/quran_tab/quran_tab.dart';
import 'package:islamy/ui/screens/home/tabs/radio_tab/radio_tab.dart';
import 'package:islamy/ui/screens/home/tabs/sebha_tab/sebha_tab.dart';
import 'package:islamy/ui/utilits/app_assets.dart';
import 'package:islamy/ui/utilits/app_colors.dart';
import 'package:islamy/ui/utilits/app_theme.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "Home Screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTabIndex = 0;
  List<Widget> tabs = [RadioTab(), SebhaTab(), AhadethTab(), QuranTab()];

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
            title: Text("Islamy", style: AppTheme.appBarTitleTextStyle),
          ),
          bottomNavigationBar: buildBottomNavigationBar(),
          body: tabs[currentTabIndex],
        ),
      ],
    );
  }

  Widget buildBottomNavigationBar() => Theme(
        data: ThemeData(canvasColor: AppColors.primary),
        child: BottomNavigationBar(
            currentIndex: currentTabIndex,
            onTap: (index) {
              currentTabIndex = index;
              setState(() {});
            },
            backgroundColor: AppColors.primary,
            selectedItemColor: AppColors.accent,
            selectedFontSize: 25,
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(AppAssets.icRadio),
                    size: 35,
                  ),
                  label: "Radio"),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(AppAssets.icSebha),
                    size: 35,
                  ),
                  label: "Sebha"),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(AppAssets.icHadeth),
                    size: 35,
                  ),
                  label: "Hadeth"),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(AppAssets.icQuran),
                    size: 35,
                  ),
                  label: "Quran"),
            ]),
      );
}
