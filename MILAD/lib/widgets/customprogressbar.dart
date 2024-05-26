import 'package:flutter/material.dart';
import 'package:meelad/color.dart';

class CustomProgressBar extends StatelessWidget {
  final double percentage;

  const CustomProgressBar({Key? key, required this.percentage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0, // Adjust the height of the progress bar
      child: Stack(
        children: [
          Container(
            height: 10.0,
            decoration: BoxDecoration(
              color: Colors.grey[300], // Background color
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * (percentage / 100),
            height: 10.0,
            decoration: BoxDecoration(
              color: pink, // Progress color
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          Positioned(
            left: 0,
            child: Container(
              width: 10.0,
              height: 10.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: pink, // Start point color
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              width: 10.0,
              height: 10.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: pink, // End point color
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * (percentage / 100) - 5,
            child: Container(
              width: 10.0,
              height: 10.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: pink, // Current percentage point color
              ),
            ),
          ),
          Positioned(
            top: 15.0,
            left: 0,
            child: Text(
              '0%',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 15.0,
            right: 0,
            child: Text(
              '100%',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: 15.0,
            left: MediaQuery.of(context).size.width * (percentage / 100) - 15,
            child: Text(
              '${percentage.toStringAsFixed(0)}%',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

// Example usage:
// CustomProgressBar(percentage: 50),
