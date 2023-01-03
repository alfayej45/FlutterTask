import 'package:flutter/material.dart';
class TestProductOne extends StatelessWidget {
  const TestProductOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width/4,
      decoration: BoxDecoration(
        color: Colors.white60,),
      child: Align(alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        children: [
            Text("Test product 01",style: TextStyle(fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black),),
            Text("200 pcs x 200",style: TextStyle(fontSize: 12,color: Colors.black),)
        ],
      ),
      Column(
        children: [
            Text("Test product 01",style: TextStyle(fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black),),
            Text("20 pcs x 300",style: TextStyle(fontSize: 12,color: Colors.black),)
        ],
      ),
      Column(
        children: [
            Text("Test product 01",style: TextStyle(fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black),),
            Text("20 pcs x 200",style: TextStyle(fontSize: 12,color: Colors.black),)
        ],
      )
    ],
    ),
          ))

    );
  }
}