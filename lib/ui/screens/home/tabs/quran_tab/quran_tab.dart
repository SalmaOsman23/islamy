import 'package:flutter/material.dart';
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
                  onPressed: () {},
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
