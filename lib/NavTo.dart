import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

navigateTo (BuildContext context , Widget newScreen){
  Navigator.push(context, MaterialPageRoute(builder: (c){
    return newScreen;
  }));
}