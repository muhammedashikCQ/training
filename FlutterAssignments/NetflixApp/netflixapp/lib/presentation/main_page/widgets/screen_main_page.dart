import 'package:flutter/material.dart';
import 'package:netflixapp/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:netflixapp/presentation/home/screen_home.dart';
import 'package:netflixapp/presentation/news_&_hot/screen_news_and_hot.dart';
import 'package:netflixapp/presentation/search/screen_search.dart';

import '../../downloads/widgets/screendownload.dart';
import 'bottom_nav.dart';

class ScreenPage extends StatelessWidget {
  ScreenPage({super.key});
  final _pages = [
    const ScreenHome(),
    const ScreenNewsAndHot(),
    const ScreenFastLaugh(),
    const ScreenSearch(),
    const ScreenDownload()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: ValueListenableBuilder(
            valueListenable: indexChangeNotifier,
            builder: (context, index, _) {
              return _pages[index];
            },
          ),
          bottomNavigationBar: const BottomNavigationWidget()),
    );
  }
}
