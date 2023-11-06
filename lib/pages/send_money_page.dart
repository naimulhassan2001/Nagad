

import 'package:nagad/costom_widget/all_contact_number.dart';
import 'package:flutter/material.dart';


class SendMoney extends StatefulWidget {
  const SendMoney({super.key});

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {





  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Send Money"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(height: 20,),
            Row(
              children: [
                const SizedBox(
                  width: 60,
                  child: Expanded(
                      child: Icon(Icons.call, weight: 30,), ),
                ),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          label: const Text("Number"),
                          suffix: const Icon(Icons.arrow_forward),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                          )
                        ),
                      ),
                    )
                )


              ],
            ),
            const SizedBox(height: 10,),
            const Expanded(
              child: AllContactNumber()
            ),
          ],
        ),

      ),
    );


  }
}
