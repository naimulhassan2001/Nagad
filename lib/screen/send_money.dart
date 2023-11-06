

import 'dart:math';

import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_contacts/flutter_contacts.dart';


import 'package:flutter/material.dart';

import '../contacts_class.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({super.key});

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {


  List<Contact> contacts = [] ;

  bool isLoading = true ;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getContactPermission();
  }

  void getContactPermission() async{

    if(await Permission.contacts.isGranted) {
      fetchContacts() ;
    } else{
      await Permission.contacts.request() ;
    }

  }

  void fetchContacts() async{

    contacts = await FlutterContacts.getContacts();
    setState(() {
      isLoading = false;
    });

  }
  


  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Send Money"),),
        body: isLoading ? const Center( child: CircularProgressIndicator(),) :
        ListView.builder(
            itemCount: contacts!.length,
            itemBuilder: (context, index) => ListTile(
                title: Text(contacts![index].displayName),
                leading: SizedBox(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    backgroundColor: Colors.primaries[Random().nextInt(Colors.primaries.length)] ,
                    child: Text(contacts![index].displayName[0]),
                  ),
                ),
                onTap: () async {
                  final fullContact = await FlutterContacts.getContact(contacts![index].id);

                  await Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => ContactPage(fullContact!)));
                })),

      ),
    );


  }
}
