import 'package:flutter/material.dart';

Widget buildTextField(TextEditingController controller, String label, String hint, String iconpath) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      textDirection: TextDirection.rtl,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontFamily: 'Baloo',
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(
          width: 317,
          height: 55,
          child: TextField(
            style: const TextStyle(color: Colors.grey, fontSize: 16, fontFamily: 'Baloo'),
            controller: controller,
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: const TextStyle(fontSize: 16),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(5.0),
                child: ImageIcon(
                  AssetImage(iconpath), 
                  size: 22,
                ),
              ),
              contentPadding: const EdgeInsets.all(20.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Color(0xFFB2A4FF), width: 5.0),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
