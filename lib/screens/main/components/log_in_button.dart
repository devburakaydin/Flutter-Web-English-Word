import 'package:flutter/material.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      text: "Kayıt ol",
      press: () {},
    );
  }
}

class DefaultButton extends StatelessWidget {
  final String text;
  final Function? press;

  const DefaultButton({
    Key? key,
    required this.text,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.yellow.shade900),
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          ),
        ),
        onPressed: () => press,
        child: Text(
          text.toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}