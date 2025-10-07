import 'package:flutter/material.dart';
import 'package:web_portfolio/pages/home/components/carousel.dart';
import 'package:web_portfolio/pages/home/components/cv_section.dart';
import 'package:web_portfolio/pages/home/components/footer.dart';
import 'package:web_portfolio/pages/home/components/header.dart';
import 'package:web_portfolio/pages/home/components/ios_app_ad.dart';
import 'package:web_portfolio/pages/home/components/website_ad.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/globals.dart';

final IntroSectionKey = GlobalKey();
final CVSectionKey = GlobalKey();
final PortfolioSectionKey = GlobalKey();
final ContactSectionKey = GlobalKey();

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Globals.scaffoldKey,
      endDrawer: Drawer(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 24.0,
            ),
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return headerItems[index].isButton
                    ? MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Container(
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 28.0),
                          child: TextButton(
                            onPressed: headerItems[index].onTap,
                            child: Text(
                              headerItems[index].title,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      )
                    : ListTile(
                        title: Text(
                          headerItems[index].title,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 10.0,
                );
              },
              itemCount: headerItems.length,
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
                        child: Header(),
                      ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Container(
                        key: IntroSectionKey,
                        child: Carousel(),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(key: CVSectionKey, child: CvSection()),
                      Container(key: PortfolioSectionKey, child : IosAppAd()),
                      SizedBox(
                        height: 70.0,
                      ),
                      WebsiteAd(),
                      SizedBox(
                        height: 50.0,
                      ),
                      Container(key: ContactSectionKey, child: Footer()),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
