import 'package:flutter/material.dart';
class RemainingBalanceConteinar extends StatelessWidget {
  final String text1;
  RemainingBalanceConteinar({Key? key, required this.text1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.centerLeft,
      height: 75,
      width: MediaQuery.of(context).size.width*.3,
      decoration: BoxDecoration(
          color:Colors.redAccent),
      child: Column(
        children: [
          Text(text1,style: TextStyle(fontSize: 15,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              color: Colors.black)),

        ],
      ),
    );
  }
}