import 'package:flutter/material.dart';
class AllSameConteinar extends StatelessWidget {
 final String text1;
 final String Text2;
   AllSameConteinar({Key? key, required this.text1, required this.Text2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 80,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color:Colors.white60),
      child: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Text(text1,style: TextStyle(fontSize: 15,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
            SizedBox(height: 15,),
            Text(Text2,style: TextStyle(fontSize: 15,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
