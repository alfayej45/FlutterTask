import 'package:flutter/material.dart';
import 'package:flutter_intern_task/widget/remaining_balance.dart';
import 'package:flutter_intern_task/widget/sameconteinar.dart';
import 'package:flutter_intern_task/widget/testproduct1_amount.dart';

import 'test_product1widget.dart';
class FirstWidget extends StatelessWidget {
  const FirstWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Container(
        alignment: Alignment.centerLeft,
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color:Color(0xFF10AB83)),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text("Deus",style: TextStyle(fontSize: 15,fontStyle: FontStyle.normal,color: Color(0xFFFFFFFF))),
      ),
    ),
        Container(
          alignment: Alignment.centerLeft,
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color:Color(0xFFFFFFFF)),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("Previous Due",style: TextStyle(fontSize: 15,
                    fontStyle: FontStyle.normal,
                    color:Colors.black)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("01 January 2022",style: TextStyle(fontSize: 12,
                    fontStyle: FontStyle.normal,
                    color:Colors.black)),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color:Color(0xFF10AB83)),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text("Purchase",style: TextStyle(fontSize: 15,
                fontStyle: FontStyle.normal,
                color: Color(0xFFFFFFFF))),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          height: 80,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color:Color(0xFFC9ECE3)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 7),
                child: Row(

                  children: [
                    Text("Invoice Date :",style: TextStyle(fontSize: 13,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        color:Colors.black)),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("01 January 2022",style: TextStyle(fontSize: 13,
                          fontStyle: FontStyle.normal,
                          color:Colors.black)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 7),
                child: Row(
                  children: [
                    Text("Invoice No. :",style: TextStyle(fontSize: 13,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        color:Colors.black)),
                    Text("5386328",style: TextStyle(fontSize: 13,
                        fontStyle: FontStyle.normal,
                        color:Colors.black)),
                  ],
                ),
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: Table(
                    border: TableBorder.all(color:Color(0xFF10AB83),width: 1),
                    // defaultVerticalAlignment: TableCellVerticalAlignment.top,
                    defaultColumnWidth:FixedColumnWidth(130) ,
                    children: [
                      TableRow(
                        children: [
                          TestProductOne(),
                          TestProductOneAmount(),

                        ],),
                      TableRow(
                        children: [
                          AllSameConteinar(
                            text1:'DIscount',
                            Text2: 'VAT',


                          ),

                          AllSameConteinar(
                            text1:'??? 0',
                            Text2: '??? 0',
                          )

                        ],),
                      TableRow(
                        children: [
                          AllSameConteinar(
                            text1:'Grand Total',
                            Text2: 'Previous Due',
                          ),

                          AllSameConteinar(
                            text1:'??? 500000',
                            Text2: '??? 20000',
                          ),


                        ],),
                      TableRow(
                        children: [
                          AllSameConteinar(
                            text1:'Total Amount',
                            Text2: 'Total Payment',
                          ),

                          AllSameConteinar(
                            text1:'??? 700000',
                            Text2: '??? 400000',
                          ),


                        ],),
                      TableRow(
                        children: [
                          // RemainingBalanceConteinar(
                          //     text1: "Remaining Balance"
                          // ),
                          // RemainingBalanceConteinar(
                          //     text1: "??? 20000"
                          // )
                          Container(
                            // alignment: Alignment.centerLeft,
                            height: 55,
                            width: MediaQuery.of(context).size.width*.3,
                            decoration: BoxDecoration(
                                color:Colors.white60),
                            child: Column(
                              children: [
                                Text("Remaining Balance",style: TextStyle(fontSize: 13,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),

                              ],
                            ),
                          ),
                          Container(
                            // alignment: Alignment.centerLeft,
                            height: 30,
                            width: MediaQuery.of(context).size.width*.3,
                            decoration: BoxDecoration(
                                color:Colors.white60),
                            child: Column(
                              children: [
                                Text("20000",style: TextStyle(fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),

                              ],
                            ),
                          )

                        ],),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
