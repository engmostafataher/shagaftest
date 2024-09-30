import 'package:flutter/material.dart';

import 'package:shagaftest/features/auth/presentation/views/widgets/login/app_bar_auth.dart';
import 'package:shagaftest/features/auth/presentation/views/widgets/login/bottom.dart';
import 'package:shagaftest/features/auth/presentation/views/widgets/login/logo.dart';
import 'package:shagaftest/features/auth/presentation/views/widgets/login/row_text.dart';
import 'package:shagaftest/features/auth/presentation/views/widgets/login/text_form_field_login.dart';
import 'package:shagaftest/features/auth/presentation/views/widgets/login/text_login.dart';

class BodySingup
 extends StatelessWidget {
  const BodySingup
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBarAuth(),
        SizedBox(height: 30,),
        Logo(),
        SizedBox(height: 20,),
        Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 254, 238, 189),
            borderRadius: BorderRadius.circular(20)
          ),
          width: 342,
          height: 440,
          child: Column(children: [
            TextLogin(texts: 'Phone Number'),
            TextFormFieldLogin(hints: 'Enter your phone number', icons: Icon(Icons.phone), keyboardKeys: TextInputType.phone),
            SizedBox(height: 2,),
            TextLogin(texts: 'User Name'),
            TextFormFieldLogin(hints: 'Enter your name', icons: Icon(Icons.face), keyboardKeys: TextInputType.text),
            SizedBox(height: 2,),
            TextLogin(texts: 'Password',),
            TextFormFieldLogin(hints: 'Enter your password',icons: Icon(Icons.lock),keyboardKeys: TextInputType.visiblePassword,),
            SizedBox(height: 2,),
            TextLogin(texts: 'Confirm Password',),
            TextFormFieldLogin(hints: 'Confirm password',icons: Icon(Icons.lock),keyboardKeys: TextInputType.visiblePassword,),
            Bottom(textBotom: 'SIGN UP'),
            Container(
              margin: EdgeInsets.only(left: 65),
              child: RowText(text1: 'Already have an account? ', text2: 'Log in'))

            
          ],),
        )



      ],
    );
  }
}