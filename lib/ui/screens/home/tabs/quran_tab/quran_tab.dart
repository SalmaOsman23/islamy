import 'package:flutter/material.dart';
import 'package:islamy/data_model/details_screen_args.dart';
import 'package:islamy/ui/screens/home/details_screen/details_screen.dart';
import 'package:islamy/ui/utilits/app_assets.dart';
import 'package:islamy/ui/utilits/app_colors.dart';

import '../../../../utilits/app_theme.dart';
import '../../../../utilits/constants.dart';

class QuranTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(flex: 3, child: Image.asset(AppAssets.quranImageLogo)),
        Divider(
          thickness: 3,
          color: AppColors.primary,
        ),
        Text(
          "Surah Name",
          textAlign: TextAlign.center,
          style: AppTheme.quranTabTitleTextStyle,
        ),
        Divider(
          thickness: 3,
          color: AppColors.primary,
        ),
        Expanded(
          flex: 7,
          child: ListView.builder(
              itemCount: Constants.surahName.length,
              itemBuilder: (_, index) {
                return TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, DetailScreen.routeName,
                        arguments: DetailsScreenArgs(
                            isQuranScreen: true,
                            detailsScreenTitle: Constants.surahName[index],
                            detailsScreenContent: "${index + 1}.txt"));
                  },
                  child: Text(
                    Constants.surahName[index],
                    style: AppTheme.quranTabTitleTextStyle
                        .copyWith(fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center,
                  ),
                );
              }),
        ),
      ],
    );
  }
}
