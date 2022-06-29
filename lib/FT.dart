import 'package:flutter/material.dart';

class Ft extends StatelessWidget {
  final bool isPassword;
  String? t;

  Ft({
    Key? key,
    this.isPassword=false,
    this.t,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(
          color: Colors.grey,

        ),
      ),
      child: TextFormField(

        obscureText: isPassword,

      decoration: InputDecoration(hintText: t),

      ),
    );
  }
}
