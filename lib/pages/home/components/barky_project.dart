import 'package:flutter/material.dart';
import 'package:web_portfolio/utils/screen_helper.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/pages/home/components/project_card.dart';

class BarkyProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth),
        tablet: _buildUi(kTabletMaxWidth),
        mobile: _buildUi(getMobileMaxWidth(context)),
      ),
    );
  }

  Widget _buildUi(double width) {
    // The original Barky layout showed the image first on wide screens.
    return Center(
      child: Container(
        width: width,
        child: ProjectCard(
          header: 'IOS AND ANDROID APP',
          title: 'BARKY: FIND NEW FRIENDS\nWITH YOUR DOG',
          description:
              "As part of my Bachelor's thesis, I developed a cross-platform social networking app for dog owners to connect and arrange playdates for their pets.",
          imagePath: 'assets/ios.png',
          imageOnRightOnDesktop: false,
        ),
      ),
    );
  }
}
