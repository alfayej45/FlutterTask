import 'package:flutter/material.dart';

import '../widget/payment_deu_widget.dart';
import '../widget/payment_widget.dart';
import '../widget/return_payment_widget.dart';
import '../widget/return_widget.dart';
import '../widget/test_product1widget.dart';
import '../widget/firstconteinar.dart';
import '../widget/mediumwidget.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List data=["Purchase List","Order List","VAT List","Product Unit,","Purchase Report"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color(0xFF10AB83),
                        borderRadius: BorderRadius.only(bottomLeft:Radius.circular(30),
                            bottomRight:Radius.circular(30))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25,left:1),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.close,size: 28,color: Colors.white,),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10,left: 7),
                            child: Text("Demo Limited Company",style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left:200,
                      child: Container(
                        height:MediaQuery.of(context).size.height*.3,
                        width: 200,
                        decoration: BoxDecoration(
                            gradient:const LinearGradient(
                                colors: [
                                  Color(0xFFC9ECE3),
                                  Color(0xFF10AB83),
                                ],
                                end: FractionalOffset(0.0, 0.0),
                                begin: FractionalOffset(1.0,0.0),
                                tileMode: TileMode.clamp,
                                stops: [0.0,1.0]
                            ),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(300),
                              topLeft:Radius.circular(30))
                        ),
                      )),
                  Positioned(
                      left:200,
                      child: Container(
                        height:MediaQuery.of(context).size.height*.3,
                        width: 147,
                        decoration: BoxDecoration(
                            gradient:const LinearGradient(
                                colors: [
                                  Color(0xFFC9ECE3),
                                  Color(0xFF10AB83),
                                ],
                                end: FractionalOffset(0.0, 0.0),
                                begin: FractionalOffset(1.0,0.0),
                                tileMode: TileMode.clamp,
                                stops: [0.0,1.0]
                            ),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(300),
                                topLeft:Radius.circular(30))
                        ),
                      )),

                ],
              ),
            Column(
              children: [
                ExpansionTile(
                  leading: Icon(Icons.add_shopping_cart,size: 25,),
                  title: Text("Purchase",style: TextStyle(fontWeight:
                  FontWeight.bold,
                      fontSize: 16)),
                  children: [
                    ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        itemCount: data.length,
                        itemBuilder: (context,index){
                          return Padding(
                            padding: const EdgeInsets.only(left: 72,bottom: 10,top: 5),
                            child: Text(data[index].toString(),style: TextStyle(fontWeight:
                            FontWeight.bold,
                              color: Color(0xFF10AB83),
                              fontSize: 14,),),
                          );
                        }
                    )
                  ],
                ),
                ExpansionTile(

                  leading: Icon(Icons.badge,size: 25,),
                  title: Text("Sell",style: TextStyle(fontWeight:
                  FontWeight.bold,
                    fontSize: 16,)),
                  children: [
                    ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        itemCount: data.length,
                        itemBuilder: (context,index){
                          return Padding(
                            padding: const EdgeInsets.only(left: 72,bottom: 10),
                            child: Text(data[index].toString(),style: TextStyle(fontWeight:
                            FontWeight.bold,
                                fontSize: 15,color: Color(0xFF10AB83)),),
                          );
                        }
                    )
                  ],
                ),
                ExpansionTile(

                  leading: Icon(Icons.add_home_work_rounded,size: 25,),
                  title: Text("Stock / Inventory",style: TextStyle(fontWeight:
                  FontWeight.bold,
                    fontSize: 16,)),
                  children: [
                    ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        itemCount: data.length,
                        itemBuilder: (context,index){
                          return Padding(
                              padding: const EdgeInsets.only(left: 72,bottom: 10),
                              child: Text(data[index].toString(),style: TextStyle(fontWeight:
                              FontWeight.bold,color: Color(0xFF10AB83),
                                fontSize: 14,),
                              ));
                        }
                    )
                  ],
                )
              ],
            )
            ],
          ),
        ),
      ),
     appBar: AppBar(
       centerTitle: true,
       backgroundColor: Color(0xFF10AB83),
       title: Text("Table Task",style: TextStyle(fontSize: 16,
           fontWeight: FontWeight.bold,
           color: Colors.white),),
     ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Table(
              border: TableBorder.all(color: Color(0xFF10AB83),width: 1),
              defaultVerticalAlignment: TableCellVerticalAlignment.top,
              defaultColumnWidth:FixedColumnWidth(250) ,
              // columnWidths: {1:FixedColumnWidth(.2)},
              children: [
                TableRow(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 5,top: 10),
                     child: FirstWidget(),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 10,right: 150),
                     child: mediumWidget(),
                   ),
                 ],),

                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: PaymentWidget(hedder: "Payment",),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 150),
                      child: PaymentDeuWidget(),
                    ),
                  ],),

                TableRow(
                  children: [
                    ReturnWidget(hedder: "Return",),
                    Padding(
                      padding: const EdgeInsets.only(right: 150),
                      child: ReturnPaymentWidget(),
                    ),
                  ],),



              ],
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,bottom: 25,top: 25),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color:Color(0xFF10AB83),
                ),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Align(
                    alignment: Alignment.center,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(child: Icon(Icons.add,size: 15,color:Color(0xFF10AB83),))),
                          SizedBox(width: 5,),
                          Text("Pay the balance",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,color: Colors.white),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
