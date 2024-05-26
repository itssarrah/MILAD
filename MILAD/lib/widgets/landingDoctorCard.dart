import 'package:flutter/material.dart';
import 'package:meelad/color.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String subtitle;

  const CustomCard({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.0, // Adjust the height of the card
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 12.0),
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/doc.png', // Replace 'your_image.png' with your image path
                    width: 100.0,
                    height: 100.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          child: Text(
                            title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          subtitle,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: -15.0,
              right: 16.0,
              child: Image.asset(
                'assets/images/features.png', // Replace 'your_image.png' with your image path
                width: 320.0,
                height: 320.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Example usage:
// CustomCard(
//   title: 'Main Text',
//   subtitle: 'Sub Text',
// ),
