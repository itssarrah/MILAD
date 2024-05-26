import 'package:flutter/material.dart';

class RoleChoice extends StatefulWidget {
  const RoleChoice({Key? key}) : super(key: key);

  @override
  State<RoleChoice> createState() => _RoleChoiceState();
}

class _RoleChoiceState extends State<RoleChoice> {
  bool chosenpatient = false;
  bool chosengeny = false;

  void _setChosenPatient() {
    setState(() {
      chosenpatient = true;
      chosengeny = false;
    });
  }

  void _setChosenGeny() {
    setState(() {
      chosengeny = true;
      chosenpatient = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/rolebg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'الدور',
                style: TextStyle(fontFamily: 'Gulzar', fontSize: 28),
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: () {
                  _setChosenPatient();
                },
                child: Container(
                  width: 239,
                  height: 54,
                  padding: const EdgeInsets.all(12.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: chosenpatient ? Color(0xFFB2A4FF) : Color(0x730B0000),
                    border: Border.all(color: const Color(0xFFB2A4FF)),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Text(
                    'طبيب',
                    style: TextStyle(fontFamily: 'Gulzar', fontSize: 22, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: () {
                  _setChosenGeny();
                },
                child: Container(
                  width: 239,
                  height: 54,
                  padding: const EdgeInsets.all(12.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: chosengeny ? Color(0xFFB2A4FF) : Color(0x730B0000),
                    border: Border.all(color: const Color(0xFFB2A4FF)),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Text(
                    'حامل',
                    style: TextStyle(fontFamily: 'Gulzar', fontSize: 22, color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 209,
                height: 57,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/chooserole');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xffDD6969)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    'التالي',
                    style: TextStyle(fontSize: 28, fontFamily: 'Baloo', color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
