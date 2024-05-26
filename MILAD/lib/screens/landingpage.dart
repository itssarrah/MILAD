import 'package:flutter/material.dart';
import 'package:meelad/color.dart';
import 'package:meelad/widgets/customprogressbar.dart';
import 'package:meelad/widgets/landingDoctorCard.dart';
import 'package:meelad/widgets/predictionCard.dart';

class Landingpage extends StatelessWidget {
  const Landingpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            height: 60.0, // Height of the custom app bar
            margin: EdgeInsets.only(top: 40.0, bottom: 40), // Add margin top
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 140.0, // Add width
                  height: 140.0, // Add height
                ),
                Image.asset(
                  'assets/images/acc.png',
                  width: 40.0,
                  height: 40.0,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text(
              'Hello Sarra ARAB',
              style: TextStyle(fontFamily: 'Jost', fontSize: 14.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text(
              '17th Week of Pregnancy ',
              style: TextStyle(fontFamily: 'Jost', fontSize: 18.0),
            ),
          ),
          SizedBox(height: 20.0),
          SizedBox(
            height: 160.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 12, // Number of cards including the two extra days
              itemBuilder: (context, index) {
                // Calculate the date for each day starting two days before today
                DateTime currentDate = DateTime.now()
                    .subtract(Duration(days: 2))
                    .add(Duration(days: index));
                // Format the date to display in the card
                String formattedDate =
                    '${currentDate.day}/${currentDate.month}';
                // Get the day of the week
                String dayOfWeek = _getDayOfWeek(currentDate.weekday);

                // Determine the color of the container based on whether it's today or not
                Color containerColor = currentDate.day == DateTime.now().day
                    ? bluecolor
                    : lightyellow;

                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  width: 100.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        dayOfWeek,
                        style: TextStyle(
                            fontFamily: 'Jost',
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        formattedDate,
                        style: TextStyle(fontFamily: 'Jost', fontSize: 16.0),
                      ),
                      SizedBox(height: 4.0),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18.0, right: 18.0),
            child: CustomProgressBar(percentage: 29),
          ),
          CustomCard(
            title: 'Your Next Appointment with Dr.Belhamid : ',
            subtitle: '12/05/2024 @ 14:15',
          ),
          SizedBox(
            height: 12.0,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                'Check Your Pregnancy risk Using Ai !',
                style: TextStyle(fontFamily: 'Jost', fontSize: 16.0),
              )),
          CenteredCardWidget(),
        ],
      ),
    ));
  }

  String _getDayOfWeek(int weekday) {
    switch (weekday) {
      case 1:
        return 'Mon';
      case 2:
        return 'Tue';
      case 3:
        return 'Wed';
      case 4:
        return 'Thu';
      case 5:
        return 'Fri';
      case 6:
        return 'Sat';
      case 7:
        return 'Sun';
      default:
        return '';
    }
  }
}

void main() {
  runApp(MaterialApp(
    home: Landingpage(),
  ));
}
