import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/utils/constants.dart';

/// A reusable project card that shows an image and a textual description.
///
/// It preserves the original responsive behavior:
/// - On wide layouts (maxWidth > 720) it lays out horizontally and the caller
///   can choose whether the image appears on the right or left.
/// - On narrow layouts it stacks vertically and shows the image above the text.
class ProjectCard extends StatelessWidget {
  final String header;
  final String title;
  final String description;
  final String imagePath;
  final bool imageOnRightOnDesktop;
  final String buttonLabel;

  const ProjectCard({
    Key? key,
    required this.header,
    required this.title,
    required this.description,
    required this.imagePath,
    this.imageOnRightOnDesktop = true,
    this.buttonLabel = 'MORE DETAILS',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isWide = constraints.maxWidth > 720.0;

          Widget imageWidget = Expanded(
            flex: isWide ? 1 : 0,
            child: Image.asset(
              imagePath,
              width: isWide ? null : 350.0,
            ),
          );

          Widget textWidget = Expanded(
            flex: isWide ? 1 : 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  header,
                  style: GoogleFonts.oswald(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w900,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 15.0),
                Text(
                  title,
                  style: GoogleFonts.oswald(
                    color: Theme.of(context).textTheme.bodyLarge?.color,
                    fontWeight: FontWeight.w900,
                    height: 1.3,
                    fontSize: 35.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  description,
                  style: TextStyle(
                    color: kCaptionColor,
                    height: 1.5,
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(height: 25.0),
                Row(
                  children: [
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Container(
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        height: 48.0,
                        padding: EdgeInsets.symmetric(horizontal: 28.0),
                        child: TextButton(
                          onPressed: () {},
                          child: Center(
                            child: Text(
                              buttonLabel,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                  ],
                ),
              ],
            ),
          );

          // On narrow screens we show image first (top) then text - this
          // mirrors the project's previous behavior.
          if (!isWide) {
            return Column(
              children: [
                imageWidget,
                textWidget,
              ],
            );
          }

          // Wide layout: place children horizontally and allow caller to choose order
          final children = imageOnRightOnDesktop
              ? [textWidget, imageWidget]
              : [imageWidget, textWidget];

          return Flex(
            direction: Axis.horizontal,
            children: children,
          );
        },
      ),
    );
  }
}
