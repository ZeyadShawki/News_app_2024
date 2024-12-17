import 'package:flutter/material.dart';

class MyDividerWidget extends StatelessWidget {
  const MyDividerWidget({super.key});

  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsetsDirectional.only(start: 20.0),
      child: Container(
        width: double.infinity,
        height: 1,
        color: Colors.grey[300],
      ),
    );
  
}