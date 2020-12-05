import 'package:flutter/material.dart';
import 'package:hasanat/widgets/default_button.dart';

import '../sign_up_screen.dart';
import 'get/get_name.dart';

class NameBuilder extends StatefulWidget {
  static String routeName = '/name';

  @override
  _NameBuilderState createState() => _NameBuilderState();
}

class _NameBuilderState extends State<NameBuilder> {
  final _nameController = TextEditingController();

  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          child: TextField(
            controller: _nameController,
            decoration: InputDecoration(
              hintText: 'Enter your Name',
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 42, vertical: 20),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        DefaultButton(
          press: () {
            if (_nameController.text != '') {
              saveNamePerfs(_nameController.text).then((_) => {
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
