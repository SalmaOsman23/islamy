import 'package:flutter/material.dart';
import 'package:islamy/ui/utilits/app_assets.dart';
import 'package:islamy/ui/utilits/app_colors.dart';
import 'package:islamy/ui/utilits/app_theme.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AppAssets.radioImageLogo),
        Column(
          children: [
            Text(
              "اذاعة القرآن الكريم",
              style: AppTheme.quranTabTitleTextStyle,
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.skip_previous_rounded,
                      size: 45,
                    ),
                    color: AppColors.primary,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.play_arrow_rounded,
                      size: 45,
                    ),
                    color: AppColors.primary,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.skip_next_rounded,
                      size: 45,
                    ),
                    color: AppColors.primary,
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
