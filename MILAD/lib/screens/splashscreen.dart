import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image covering the entire screen
          Image.asset(
            'assets/images/splashscreen.png',
            fit: BoxFit.cover,
          ),
          // Positioned widget to place the button at the bottom
          Positioned(
            left: 0,
            right: 0,
            bottom: 80, // Adjust this value as needed
            child: Center(
              child: Container(
                width: 209,
                height: 57,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/chooserole');
                  },
                  style: ButtonStyle(
                    backgroundColor:  MaterialStateProperty.all<Color>(Color(0xffDD6969)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    'ابدا',
                    style: TextStyle(fontSize: 28, fontFamily: 'Baloo', color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
