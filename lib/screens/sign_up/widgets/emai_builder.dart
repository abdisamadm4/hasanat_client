import 'package:flutter/material.dart';
import 'package:hasanat/widgets/default_button.dart';

import '../sign_up_screen.dart';
import 'get/get_email.dart';

class EmailBuilder extends StatefulWidget {
  static String routeName = '/email';

  @override
  _EmailBuilderState createState() => _EmailBuilderState();
}

class _EmailBuilderState extends State<EmailBuilder> {
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          child: TextField(
            controller: _emailController,
            decoration: InputDecoration(hintText: 'Enter your Email'),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        DefaultButton(
          press: () {
            if (_emailController.text != '') {
              saveEmailPerfs(_emailController.text).then((_) => {
                    Navigator.pushNamed(context, SignUpScreen.routeName),
                  });
            }
          },
          text: 'Next',
        ),
      ],
    );
  }
}
