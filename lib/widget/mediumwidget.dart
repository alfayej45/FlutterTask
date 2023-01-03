import 'package:flutter/material.dart';
class mediumWidget extends StatelessWidget {
  const mediumWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: MediaQuery.of(context).size.width/4,
      decoration: BoxDecoration(
        color: Color(0xFFC9ECE3),),
      child: Align(alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Column(

                  children: [
                    Text("Deu",style:TextStyle(fontSize: 16,color: Colors.black) ,),
                    Text("৳ 20000",style:TextStyle(fontSize: 16,color: Colors.red) ,),
                    Divider(height: 1,color: Color(0xFF10AB83),),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Column(
                  children: [
                    Text("Deu",style:TextStyle(fontSize: 16,color: Colors.black) ,),
                    Text("৳ 30000",style:TextStyle(fontSize: 16,color: Colors.red) ,),
                  ],
                ),
              ),
            ],
          )),

    );
  }
}