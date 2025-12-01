import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/models/education.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/screen_helper.dart';
import 'package:web_portfolio/utils/theme_colors.dart';

class CvSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ScreenHelper(
        desktop: _buildUi(context, kDesktopMaxWidth),
        tablet: _buildUi(context, kTabletMaxWidth),
        mobile: _buildUi(context, getMobileMaxWidth(context)),
      ),
    );
  }

  Widget _buildUi(BuildContext context, double width) {
    // we need the context to get maxWidth before the constraints below
    return Center(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            width: width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Text(
                          "DOWNLOAD CV",
                          style: GoogleFonts.oswald(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w900,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    width: width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "EDUCATION",
                          style: GoogleFonts.oswald(
                            color: Theme.of(context).textTheme.bodyLarge?.color,
                            fontWeight: FontWeight.w900,
                            fontSize: 30.0,
                            height: 1.3,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Wrap(
                          children: [
                            Container(
                              constraints: BoxConstraints(maxWidth: 400.0),
                              child: Text(
                                "A full stack all round developer that does all the job he needs to do at all times. Actually this is a false statement",
                                style: TextStyle(
                                  color: Theme.of(context).textTheme.bodyLarge?.color,
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        LayoutBuilder(
                          builder: (context, constraints) {
                            return Container(
                              child: Wrap(
                                spacing: 20.0,
                                runSpacing: 20.0,
                                children: educationList
                                    .map(
                                      (education) => Container(
                                        width:
                                            constraints.maxWidth / 2.0 - 20.0,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              education.period,
                                              style: GoogleFonts.oswald(
                                                color: Theme.of(context).textTheme.bodyLarge?.color,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 20.0,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5.0,
                                            ),
                                            Text(
                                              education.description,
                                              maxLines: 4,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                color: ThemeColors.getCaptionColor(context),
                                                height: 1.5,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20.0,
                                            ),
                                            MouseRegion(
                                              cursor: SystemMouseCursors.click,
                                              child: GestureDetector(
                                                onTap: () {},
                                                child: Text(
                                                  education.linkName,
                                                  style: TextStyle(
                                                    color: Theme.of(context).textTheme.bodyLarge?.color,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 40.0,
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

final List<Education> educationList = [
  Education(
    description:
        "Master of Science: Computer Science and Management",
    linkName: "Technical University of Darmstadt",
    period: "2024 - PRESENT",
  ),
  Education(
    description:
        "Bachelor of Science: Business Information Systems",
    linkName: "Technical University of Darmstadt",
    period: "2018 - 2024",
  ),
  Education(
    description:
        "Abitur (German high school diploma)",
    linkName: "Augustiner Schule Friedberg",
    period: "2018",
  ),
];
