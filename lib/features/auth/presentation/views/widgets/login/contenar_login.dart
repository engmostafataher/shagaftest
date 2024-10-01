import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaftest/core/utils/app_router.dart';
import 'package:shagaftest/features/auth/presentation/views/widgets/login/bottom.dart';
import 'package:shagaftest/features/auth/presentation/views/widgets/login/row_text.dart';
import 'package:shagaftest/features/auth/presentation/views/widgets/login/text_form_field_login.dart';
import 'package:shagaftest/features/auth/presentation/views/widgets/login/text_login.dart';

class ContenarLogin extends StatelessWidget {
  const ContenarLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 254, 238, 189),
          borderRadius: BorderRadius.circular(20)),
      width: 342,
      height: 330,
      child:  Column(children: [
        const TextLogin(texts: 'Phone Number'),
        const TextFormFieldLogin(
          hints: 'Enter your phone number',
          icons: Icon(Icons.phone),
          keyboardKeys: TextInputType.phone,
        ),
        const SizedBox(
          height: 15,
        ),
        const TextLogin(texts: 'Password'),
        const TextFormFieldLogin(
            hints: 'Enter your password',
            icons: Icon(Icons.lock),
            keyboardKeys: TextInputType.visiblePassword),
        Container(
            margin:const EdgeInsets.only(right: 10, top: 5),
            alignment: Alignment.bottomRight,
            width: double.infinity,
            child: const Text('Forget Password?')),
        InkWell(
            onTap: () {
              GoRouter.of(context).push(AppRouter.KSingUp);
            },
            child: Bottom(textBotom: 'LOGIN')),
        Container(
          margin:const EdgeInsets.only(left: 65),
          width: double.infinity,
          child:const RowText(text1: 'Don`t have on account? ', text2: 'Sign up')
        ),
      ]),
    );
  }
}
