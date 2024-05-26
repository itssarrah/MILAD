import 'package:flutter/material.dart';
import 'package:meelad/widgets/textfield.dart';
import 'package:meelad/widgets/uploadfile.dart';

class SignupGeny extends StatefulWidget {
  const SignupGeny({super.key});

  @override
  State<SignupGeny> createState() => _SignupGenyState();
}

class _SignupGenyState extends State<SignupGeny> {
late TextEditingController phoneController;
late TextEditingController sectorController;
late TextEditingController addController;
late TextEditingController nameController;
late TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/icons/bgsignupgeny.png')
            ),
          ),
          child: Column(
            children: [
              const Text('تسجيل الدخول ', 
              style:  TextStyle(
                fontFamily: 'Gulzar',
                fontSize: 24.0,
              )),
              buildTextField(phoneController, 'رقم الهاتف', '+213 00 00 00 00', 'assets/icons/phone.png'),
              buildTextField(sectorController,'قطاع', 'عمومي', 'assets/icons/select icon.png'),
              buildTextField(addController, ' عنوان العمل', 'مصلحة النساء و التوليد', 'assets/icons/select icon.png'),
              buildTextField(nameController, 'الاسم الكامل', 'د. اسم', 'assets/icons/user icon.png'),
              buildTextField(passwordController, 'كلمة المرور ', '*********', 'assets/icons/lock icon.png'),
              buildUploadDocument('شهادة ', 'تحميل الشهادة','docs/files', (bool success) {
              if (success) {
                print('File Uploaded successfully');
              } else {
                print('failed to upload file');
              }
            }),
            ElevatedButton(onPressed: () {}, child: const Text('التالي'))
            ],
          ),
        )
      )
    );
  }



}