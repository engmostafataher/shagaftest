import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:shagaftest/core/utils/colorss.dart';
import 'package:shagaftest/features/auth/presentation/views/widgets/login/app_bar_auth.dart';
import 'package:shagaftest/features/auth/presentation/views/widgets/login/logo.dart';

class BodyVerify extends StatelessWidget {
  const BodyVerify({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBarAuth(),
        SizedBox(
          height: 50,
        ),
        Logo(),
        SizedBox(
          height: 30,
        ),
        Container(
          width: 342,
          height: 330,
          decoration: BoxDecoration(
              color: Colorss.ColorsContenar,
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 15, left: 10),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'ُEnter Varification Code',
                    style: TextStyle(fontSize: 20),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 15, left: 10),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Enter code that we have sent to your number',
                    style: TextStyle(color: Colors.grey),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 5, left: 10, bottom: 50),
                  alignment: Alignment.topLeft,
                  child: Text(
                    '01099579***',
                    
                  )),

                   OtpTextField(
        numberOfFields: 6,
        borderColor: Colors.black,
        //set to true to show as box or false to show as dash
        showFieldAsBox: true, 
        //runs when a code is typed in
        onCodeChanged: (String code) {
            //handle validation or checks here           
        },
        //runs when every textfield is filled
        onSubmit: (String verificationCode){
            showDialog(
                context: context,
                builder: (context){
                return AlertDialog(
                    title: Text("Verification Code"),
                    content: Text('Code entered is $verificationCode'),
                );
                }
            );
        }, // end onSubmit
    ),
            ],
          ),
        )
      ],
    );
  }
}
