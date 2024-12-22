import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterRight extends StatelessWidget {
  final double screenWidth;
  const FooterRight({super.key, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    double buttonFontSize = screenWidth * 0.018;
    double buttonPaddingHorizontal = screenWidth * 0.08;
    double fieldFontSize = screenWidth * 0.014;
    double formWidth =
        screenWidth > 800 ? screenWidth * 0.4 : screenWidth * 0.9;

    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: formWidth),
      child: Column(
        children: [
          _textInputField('Name', fieldFontSize),
          SizedBox(height: screenWidth * 0.04),
          _textInputField('Email', fieldFontSize),
          SizedBox(height: screenWidth * 0.04),
          _messageInputField(fieldFontSize),
          SizedBox(height: screenWidth * 0.06),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              padding: EdgeInsets.symmetric(
                  vertical: screenWidth * 0.035,
                  horizontal: buttonPaddingHorizontal),
            ),
            child: Text(
              'Submit',
              style: GoogleFonts.montserrat(
                fontSize: buttonFontSize,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _textInputField(String hint, double fontSize) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.grey[100],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.grey.withOpacity(0.1),
            width: 1,
          ),
        ),
      ),
      style: GoogleFonts.poppins(fontSize: fontSize),
    );
  }

  Widget _messageInputField(double fontSize) {
    return TextField(
      maxLines: 5,
      decoration: InputDecoration(
        hintText: 'Your message...',
        filled: true,
        fillColor: Colors.grey[100],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
      ),
      style: GoogleFonts.poppins(fontSize: fontSize),
    );
  }
}
