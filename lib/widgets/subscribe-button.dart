import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SubscribeButton extends StatelessWidget {
  const SubscribeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _textField() {
      return Container(
        width: 500,
        child: TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
            fillColor: Colors.white,
            filled: true,
            hintText: "Email Address",
          ),
        ),
      );
    }

    Widget _button() {
      return MaterialButton(
        onPressed: () {},
        height: 70,
        minWidth: 200,
        color: Colors.red,
        textColor: Colors.white,
        child: Row(
          children: [
            Text(
              "Get Started  ",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
              ),
            ),
            Icon(Icons.arrow_right)
          ],
        ),
      );
    }

    return ScreenTypeLayout(
      mobile: Column(
        children: [
          _textField(),
          SizedBox(height: 20),
          _button(),
        ],
      ),
      desktop: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _textField(),
            _button(),
          ],
        ),
      ),
    );
  }
}
