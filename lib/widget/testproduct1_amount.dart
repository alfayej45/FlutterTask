import 'package:flutter/material.dart';
class TestProductOneAmount extends StatelessWidget {
  const TestProductOneAmount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.center,
      height: 200,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color:Colors.white60),
      child: Padding(
        padding: const EdgeInsets.all( 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("৳ 40000",style: TextStyle(fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black),),
            Text("৳6000",style: TextStyle(fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black),),
            Text("৳4000",style: TextStyle(fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black),),
          ],
        )
      ),
    );
  }
}
