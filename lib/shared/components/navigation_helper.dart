import 'package:flutter/material.dart';


class NavigatorHelper{


  
static void navigateTo(context, widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));

}