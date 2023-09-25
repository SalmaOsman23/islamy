import 'package:flutter/material.dart';

import '../../../../../data_model/details_screen_args.dart';
import '../../../../utilits/app_assets.dart';
import '../../../../utilits/app_colors.dart';
import '../../../../utilits/app_theme.dart';
import '../../details_screen/details_screen.dart';

class AhadethTab extends StatelessWidget {
  List<String> ahadethNames = List.generate(50, (index) {
    return "الحديث رقم ${index + 1}";
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(flex: 3, child: Image.asset(AppAssets.hadethImageLogo)),
        const Divider(
          thickness: 3,
          color: AppColors.primary,
        ),
        Text(
          "الأحاديث",
          textAlign: TextAlign.center,
          style: AppTheme.quranTabTitleTextStyle,
        ),
        const Divider(
          thickness: 3,
          color: AppColors.primary,
        ),
        Expanded(
          flex: 7,
          child: ListView.builder(
              itemCount: 50,
              itemBuilder: (_, index) {
                return TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, DetailScreen.routeName,
                        arguments: DetailsScreenArgs(
                            isQuranScreen: false,
                            detailsScreenTitle: ahadethNames[index],
                            detailsScreenContent: "h${index + 1}.txt"));
                  },
                  child: Text(
                    ahadethNames[index],
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
