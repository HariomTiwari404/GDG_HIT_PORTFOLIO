// widgets/image_and_skills.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImageAndSkills extends StatelessWidget {
  final double screenWidth;
  const ImageAndSkills({super.key, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    double avatarRadius = screenWidth * 0.125;
    double stackHeight = screenWidth * 0.35;
    double stackWidth = screenWidth > 800 ? screenWidth * 0.9 : double.infinity;

    double fontSize = screenWidth * 0.015;

    double horizontalSpacing = screenWidth * 0.12;
    double verticalSpacing = screenWidth * 0.10;

    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.001),
      child: SizedBox(
        height: stackHeight,
        width: stackWidth,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              radius: avatarRadius,
              backgroundImage: AssetImage('assets/batman.png'),
            ),
            Positioned(
              left: horizontalSpacing * 1.7,
              top: verticalSpacing * .6,
              child: _skillText('APP DEVELOPER', fontSize),
            ),
            Positioned(
              left: horizontalSpacing * 1.3,
              top: verticalSpacing * 1.7,
              child: _skillText('FIREWALL EXPERT', fontSize),
            ),
            Positioned(
              left: horizontalSpacing * 1.7,
              top: verticalSpacing * 3,
              child: _skillText('WEB DEVELOPER', fontSize),
            ),
            Positioned(
              right: horizontalSpacing * 1.7,
              top: verticalSpacing * .6,
              child: _skillText('UI/UX DESIGNER', fontSize),
            ),
            Positioned(
              right: horizontalSpacing * 1.3,
              top: verticalSpacing * 1.7,
              child: _skillText('FIGMA DESIGNER', fontSize),
            ),
            Positioned(
              right: horizontalSpacing * 1.7,
              top: verticalSpacing * 3,
              child: _skillText('FREELANCER', fontSize),
            ),
          ],
        ),
      ),
    );
  }

  Widget _skillText(String text, double fontSize) {
    return Text(
      text,
      style:
          GoogleFonts.poppins(fontSize: fontSize, fontWeight: FontWeight.w600),
    );
  }
}
