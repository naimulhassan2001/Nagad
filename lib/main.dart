import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Nagad() ,
    );
  }
}

class Nagad extends StatefulWidget {

  const Nagad({super.key});

  @override
  State<Nagad> createState() => _NagadState();
}

class _NagadState extends State<Nagad> {
  var _currentindex =0 ;
  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width*0.2 ;

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
        body: SingleChildScrollView(
          child: Column(
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
                                width: MediaQuery.of(context).size.width *0.5,

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
              const SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: margin *2,),
                  const Text("সার্ভিস সমূহ", style: TextStyle(fontSize: 16, color: Colors.black54, fontWeight: FontWeight.bold),),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: margin*2,),
                  Column(
                    children: [
                      Container(
                        width: width,
                        height: width,
                        child: Image.asset("assets/sendmoney.png"),
                      ),
                      const SizedBox(height: 6,),
                      const Text("Send Money", style: TextStyle(fontSize: 12))
                    ],
                  ),
                  SizedBox(width: margin,),
                  Column(
                    children: [
                      Container(
                        width: width,
                        height:width,
                        child: Image.asset("assets/cashout.png"),
                      ),
                      const SizedBox(height: 6,),
                      const Text("Cash Out", style: TextStyle(fontSize: 12))
                    ],
                  ),
                  SizedBox(width: margin,),
                  Column(
                    children: [
                      Container(
                        width: width,
                        height: width,
                        child: Image.asset("assets/transfer.png"),
                      ),
                      const SizedBox(height: 6,),
                      const Text("Rechage", style: TextStyle(fontSize: 12),)
                    ],
                  ),
                  SizedBox(width: margin,),
                  Column(

                    children: [
                      Container(
                        width: width,
                        height: width,
                        child: Image.asset("assets/sendmoney.png"),
                      ),
                      const SizedBox(height: 6,),
                      const Text("Add Money", style: TextStyle(fontSize: 12))
                    ],
                  ),
                  SizedBox(width: margin*2,),


                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: margin*2,),
                  Column(
                    children: [
                      Container(
                        width: width,
                        height: width,
                        child: Image.asset("assets/transfer.png"),
                      ),
                      const SizedBox(height: 6,),
                      const Text("Transfer", style: TextStyle(fontSize: 12))
                    ],
                  ),
                  SizedBox(width: margin,),
                  Column(
                    children: [
                      Container(
                        width: width,
                        height: width,
                        child: Image.asset("assets/cashout.png"),
                      ),
                      const SizedBox(height: 6,),
                      const Text("Cash Out", style: TextStyle(fontSize: 12))
                    ],
                  ),
                  SizedBox(width: margin,),
                  Column(
                    children: [
                      Container(
                        width: width,
                        height: width,
                        child: Image.asset("assets/more.png"),
                      ),
                      const SizedBox(height: 6,),
                      const Text("More", style: TextStyle(fontSize: 12),)
                    ],
                  ),


                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: margin *2,),
                  const Text("পেমেন্ট", style: TextStyle(fontSize: 16, color: Colors.black54, fontWeight: FontWeight.bold),),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: margin*2,),
                  Column(
                    children: [
                      Container(
                        width: width,
                        height: width,
                        child: Image.asset("assets/pay.png"),
                      ),
                      const SizedBox(height: 6,),
                      const Text("machent pay", style: TextStyle(fontSize: 12))
                    ],
                  ),
                  SizedBox(width: margin,),
                  Column(
                    children: [
                      Container(
                        width: width,
                        height: width,
                        child: Image.asset("assets/billpay.png"),
                      ),
                      const SizedBox(height: 6,),
                      const Text("bill Pay", style: TextStyle(fontSize: 12))
                    ],
                  ),
                  SizedBox(width: margin,),
                  Column(
                    children: [
                      Container(
                        width: width,
                        height: width,
                        child: Image.asset("assets/emi.png"),
                      ),
                      const SizedBox(height: 6,),
                      const Text("EMI pay", style: TextStyle(fontSize: 12),)
                    ],
                  ),
                  SizedBox(width: margin,),
                  Column(

                    children: [
                      Container(
                        width: width,
                        height: width,
                        child: Image.asset("assets/mela.png"),
                      ),
                      const SizedBox(height: 6,),
                      const Text("Nagad mela", style: TextStyle(fontSize: 12))
                    ],
                  ),
                  SizedBox(width: margin*2,),


                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: margin *2,),
                  const Text("অন্যান্য", style: TextStyle(fontSize: 16, color: Colors.black54, fontWeight: FontWeight.bold),),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: margin*2,),
                  Column(
                    children: [
                      Container(
                        width: width,
                        height: width,
                        child: Image.asset("assets/contact.png"),
                      ),
                      const SizedBox(height: 6,),
                      const Text("Contact", style: TextStyle(fontSize: 12))
                    ],
                  ),
                  SizedBox(width: margin,),
                  Column(
                    children: [
                      Container(
                        width: width,
                        height: width,
                        child: Image.asset("assets/calculator.png"),
                      ),
                      const SizedBox(height: 6,),
                      const Text("Calculator", style: TextStyle(fontSize: 12))
                    ],
                  ),
                  SizedBox(width: margin,),
                  Column(
                    children: [
                      Container(
                        width: width,
                        height: width,
                        child: Image.asset("assets/limit.png"),
                      ),
                      const SizedBox(height: 6,),
                      const Text("Limit", style: TextStyle(fontSize: 12),)
                    ],
                  ),
                  SizedBox(width: margin,),
                  Column(

                    children: [
                      Container(
                        width: width,
                        height: width,
                        child: Image.asset("assets/donation.png"),
                      ),
                      const SizedBox(height: 6,),
                      const Text("Donation", style: TextStyle(fontSize: 12))
                    ],
                  ),
                  SizedBox(width: margin*2,),


                ],
              ),
              const SizedBox(height: 30,),



            ],
          ),
        ),
      ),
    );
  }
}


