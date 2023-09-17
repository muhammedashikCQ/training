import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflixapp/application/downloads/downloads_bloc.dart';
import 'package:netflixapp/core/constants/constants.dart';
import 'package:netflixapp/presentation/widgets/app_bar_widget.dart';

import '../../../core/colors/colors.dart';

List imageList = [
  "https://cdn.pixabay.com/photo/2019/04/04/15/17/smartphone-4103051_1280.jpg",
  "https://www.peakpx.com/en/hd-wallpaper-desktop-kvoni",
  "https://www.peakpx.com/en/hd-wallpaper-desktop-kvxcp"
];

class ScreenDownload extends StatelessWidget {
  const ScreenDownload({super.key});

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //       BlocProvider.of<DownloadsBloc>(context).add(const DownloadsEvent.getDownloadsImages());

    // });
     BlocProvider.of<DownloadsBloc>(context).add(const DownloadsEvent.getDownloadsImages());
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(
              title: "Downloads",
            )),
        body: ListView(
          children: [
            kHeight20,
            Row(
              children: [
                const Icon(
                  Icons.settings,
                  color: kWhiteColor,
                ),
                kWidth10,
                Text(
                  "Smart Downloads",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    letterSpacing: .75,
                  )),
                ),
              ],
            ),
            kHeight30,
            Text(
              "Introducing Downloads for you",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                letterSpacing: .75,
              )),
            ),
            kHeight20,
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                letterSpacing: .75,
              )),
            ),
            BlocBuilder<DownloadsBloc,DownloadState>(
              builder:(context,state){
              return Container(
                width: 100,
                height: 400,
                color: Colors.white,
                child: Stack(
                  children: [
                    Center(
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: size.width * .3,
                      ),
                    ),
                    
                    Image.network("state.downloads[0].PosterPath")
                  ],
                ),
              );
  }),
            MaterialButton(
              onPressed: () {},
              color: Colors.blue,
              child: Text(
                "Setup",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  color: kWhiteColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  letterSpacing: .75,
                )),
              ),
            )
          ],
        ));
  }
}
