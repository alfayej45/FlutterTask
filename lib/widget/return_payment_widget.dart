import 'package:flutter/material.dart';
class ReturnPaymentWidget extends StatelessWidget {
  const ReturnPaymentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Ai Widget ta Hocche pase Je Deu Amount ta deowya Ache oi ta
    return Container(
      height: 522,
      width: MediaQuery.of(context).size.width/4,
      decoration: BoxDecoration(
        color: Color(0xFFC9ECE3),),
      child: Align(alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Column(
                  children: [
                    Text("Deu",style:TextStyle(fontSize: 16,color: Colors.black) ,),
                    Text("৳ 15000",style:TextStyle(fontSize: 16,color: Colors.red) ,),
                  ],
                ),
              ),
            ],
          )),

    );
  }
}