import 'package:flutter/material.dart';
import 'package:shagaftest/core/utils/colorss.dart';

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
        const AppBarAuth(),
        const SizedBox(height: 30,),
        const Logo(),
        const SizedBox(height: 20,),
        Container(
          decoration: BoxDecoration(
            color: Colorss.ColorsContenar,
            borderRadius: BorderRadius.circular(20)
          ),
          width: 342,
          height: 440,
          child: Column(children: [
            const TextLogin(texts: 'Phone Number'),
            const TextFormFieldLogin(hints: 'Enter your phone number', icons: Icon(Icons.phone), keyboardKeys: TextInputType.phone),
            const SizedBox(height: 2,),
            const TextLogin(texts: 'User Name'),
            const TextFormFieldLogin(hints: 'Enter your name', icons: Icon(Icons.face), keyboardKeys: TextInputType.text),
            const SizedBox(height: 2,),
            const TextLogin(texts: 'Password',),
            const TextFormFieldLogin(hints: 'Enter your password',icons: Icon(Icons.lock),keyboardKeys: TextInputType.visiblePassword,),
            const SizedBox(height: 2,),
            const TextLogin(texts: 'Confirm Password',),
            const TextFormFieldLogin(hints: 'Confirm password',icons: Icon(Icons.lock),keyboardKeys: TextInputType.visiblePassword,),
            const Bottom(textBotom: 'SIGN UP'),
            Container(
              margin: EdgeInsets.only(left: 65),
              child: RowText(text1: 'Already have an account? ', text2: 'Log in'))

            
          ],),
        )



      ],
    );
  }
}