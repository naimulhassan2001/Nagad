

import 'package:flutter/material.dart';
import 'package:nagad/costom_widget/Gridview_item.dart';
import 'package:nagad/pages/send_money_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';


class Homepage extends StatefulWidget {

  const Homepage({super.key});

  @override
  State<Homepage> createState() => _NagadState();
}

class _NagadState extends State<Homepage> {
  var _currentindex =0 ;

  List first_gridview_item = [
    {
      "image": "assets/sendmoney.png",
      "label": "Send Money"
    },
    {
      "image": "assets/cashout.png",
      "label": "Cash out"
    },
    {
      "image": "assets/transfer.png" ,
      "label": "Rechage"
    },
    {
      "image": "assets/addmoney.png" ,
      "label": "Add Money"
    },

    {
      "image": "assets/transfer.png" ,
      "label": "transfer"
    },
    {
      "image": "assets/transfer.png" ,
      "label": "policy"
    },
    {
      "image": "assets/more.png",
      "label": "more"
    },


  ] ;
  List second_gridview_item = [
    {
      "image": "assets/pay.png",
      "label": "Merchant Pay"
    },
    {
      "image": "assets/billpay.png" ,
      "label": "Bill Pay"
    },
    {
      "image": "assets/emi.png" ,
      "label": "EMI pay"
    },
    {
      "image": "assets/mela.png",
      "label": "Nagad Mela"
    },


  ] ;
  List third_gridview_item = [
    {
      "image": "assets/contact.png" ,
      "label": "Contact"
    },
    {
      "image": "assets/calculator.png" ,
      "label": "Calculator"
    },
    {
      "image": "assets/limit.png" ,
      "label": "limit"
    },
    {
      "image": "assets/donation.png" ,
      "label": "Donation"
    },


  ] ;

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width*0.2 ;
    var gridview_item_height = MediaQuery.of(context).size.width*0.25 ;

    var margin = width/7 ;

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
            index: 0,
            height: 60,
            color: Colors.white,
            buttonBackgroundColor: Colors.white,
            backgroundColor: Colors.white,
            animationCurve: Curves.easeInOut,
            animationDuration: const Duration(milliseconds: 800),
            onTap: (index) {
              setState(() {
                _currentindex = index;
              });
            },
            items:  [
              Column(
                children: [
                  Image.asset("assets/nagad.png", height: 24, width: 24,),
                  const Text('Home', style: TextStyle(fontSize: 12)),
                ],
              ),
              Column(
                children: [
                  Image.asset("assets/transactions.png", height: 24, width: 24, color: Colors.black54,),
                  const Text('transactions', style: TextStyle(fontSize: 12)),
                ],
              ),
              Column(
                children: [
                  Image.asset("assets/people.png", height: 24, width: 24, color: Colors.black54,),
                  const Text('Contact', style: TextStyle(fontSize: 12),),
                ],
              ),
              Column(
                children: [
                  Image.asset("assets/mynagad.png",height: 24, width: 24, color: Colors.black54,),
                  const Text('My nagad', style: TextStyle(fontSize: 12)),
                ],
              ),





            ]),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 20),
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/topbackground.png"),fit: BoxFit.cover)),
                  child: Container(
                    child: Column(
                      children: [
                        Column(
                          children: [
                            const Text("নগদ", style: TextStyle(fontSize: 46, color: Colors.white, fontWeight: FontWeight.bold),),
                            const Text("ডাক বিভাগের ডিজিটাল লেনদেন", style: TextStyle(fontSize: 14, color: Colors.white),),
                            const SizedBox(height: 25,),
                            Container(
                              width: 180 ,

                              alignment: Alignment.center,

                              decoration: const BoxDecoration(color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(30))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,

                                children: [
                                  Image.asset("assets/nagad.png", width: 24, height: 24,),
                                  const SizedBox(width: 6,),
                                  const Align( alignment: Alignment.center,
                                      child: Text("ব্যালেন্স জানতে ট্যাপ করুন", textAlign: TextAlign.start,style: TextStyle(fontSize: 12, color: Colors.red, fontWeight: FontWeight.bold),)),

                                ],
                              ),


                            ),
                          ],
                        ),








                      ],
                    ),

                  ),
                )
              ],
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: margin *2,),
                        const Text("সার্ভিস সমূহ", style: TextStyle(fontSize: 16, color: Colors.black54, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    SizedBox(
                      height: gridview_item_height*2,
                      child: GridView.builder(
                        itemCount: first_gridview_item.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                        itemBuilder: (context, index) {

                          return GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const SendMoney(),))  ;
                              },
                              child: GridviewItem(image: first_gridview_item[index]['image'], label:  first_gridview_item[index]['label']));
                        },),
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        SizedBox(width: margin *2,),
                        const Text("পেমেন্ট", style: TextStyle(fontSize: 16, color: Colors.black54, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      height: gridview_item_height,
                      child: GridView.builder(
                        itemCount: second_gridview_item.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4), itemBuilder: (context, index) {

                        return GridviewItem(image: second_gridview_item[index]['image'], label:  second_gridview_item[index]['label']);
                      },),
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        SizedBox(width: margin *2,),
                        const Text("অন্যান্য", style: TextStyle(fontSize: 16, color: Colors.black54, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      height: gridview_item_height,
                      child: GridView.builder(
                        itemCount: third_gridview_item.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4), itemBuilder: (context, index) {

                        return GridviewItem(image: third_gridview_item[index]['image'], label:  third_gridview_item[index]['label']);
                      },),
                    ),
                    const SizedBox(height: 30,),
                  ],
                ),
              ),
            )





          ],
        ),
      ),
    );
  }
}