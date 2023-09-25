import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/data_model/details_screen_args.dart';
import 'package:islamy/ui/utilits/app_colors.dart';

import '../../../utilits/app_assets.dart';
import '../../../utilits/app_theme.dart';

class DetailScreen extends StatefulWidget {
  static const String routeName = "Details Screen";

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late DetailsScreenArgs arguments;
  String fileContent = "";

  @override
  Widget build(BuildContext context) {
    arguments = ModalRoute.of(context)!.settings.arguments as DetailsScreenArgs;
    //print("File Surah Name : ${arguments.detailsScreenContent}");
    if (fileContent.isEmpty) readFile();
    return Stack(children: [
      Image.asset(
        AppAssets.background,
        fit: BoxFit.fill,
        width: double.infinity,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(arguments.detailsScreenTitle,
              style: AppTheme.appBarTitleTextStyle),
        ),
        body: fileContent.isEmpty
            ? Center(child: CircularProgressIndicator())
            : Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.containerBackground,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SingleChildScrollView(
                        child: Text(
                      "$fileContent",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: AppColors.accent),
                    )),
                  ),
                ),
              ),
      ),
    ]);
  }

  void readFile() async {
    String file = await rootBundle.loadString(arguments.isQuranScreen
        ? "assets/files/quran/${arguments.detailsScreenContent}"
        : "assets/files/hadeth/${arguments.detailsScreenContent}");
    fileContent = file;
    List<String> fileLines = file.split("\n");
    for (int i = 0; i < fileLines.length; i++) {
      fileLines[i] += arguments.isQuranScreen ? "(${i + 1}) " : " ";
    }
    fileContent = fileLines.join();
    setState(() {});
    print("$file");
  }
}
