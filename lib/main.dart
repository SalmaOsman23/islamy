import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamy/providers/settings_provider.dart';
import 'package:islamy/ui/screens/home/details_screen/details_screen.dart';
import 'package:islamy/ui/screens/home/home_screen.dart';
import 'package:islamy/ui/screens/home/tabs/sebha_tab/sebha_tab.dart';
import 'package:islamy/ui/screens/home/tabs/settings_tab/settigs_tab.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (_) => SettingsProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  late SettingsProvider provider;

  @override
  Widget build(BuildContext context) {
    provider = Provider.of(context); //Provider => Class , of => function in it
    return MaterialApp(
      supportedLocales: [Locale("en"), Locale("ar")],
      locale: Locale(provider.currentLocal),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        DetailScreen.routeName: (context) => DetailScreen(),
        SettingsTab.routeName: (context) => SettingsTab(),
        SebhaTab.routeName: (context) => SebhaTab(),
      },
      initialRoute: HomeScreen.routeName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme: AppBarTheme(
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.transparent,
          )),
    );
  }
}
