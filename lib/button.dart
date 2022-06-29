import 'package:flutter/material.dart';
class Button extends StatelessWidget {
  final String text;
  final Color C;
  final VoidCallback OnClick;

  const Button({
    Key? key,
    required this.text,
    this.C=Colors.blue,
    required this.OnClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        color:C,
      ),
      child: MaterialButton(
        onPressed: () {
          OnClick();
        },
        child: Text(
          text,
          style: TextStyle(color:Colors.white),
        ),
      ),
    );
  }
}
