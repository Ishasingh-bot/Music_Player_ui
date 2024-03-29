import 'package:flutter/material.dart';

class NewBox extends StatelessWidget {
  final child;
  const NewBox({Key? key,required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Center(child:child),
      decoration: BoxDecoration(color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 15,
              offset: Offset(5, 5),
            ),
            BoxShadow(
              color: Colors.white,
              blurRadius: 15,
              offset: Offset(-5, -5),
            )
          ]),
    );
  }
}
