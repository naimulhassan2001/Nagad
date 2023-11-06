

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'dart:math';

import '../pages/contacts_details_page.dart';




class AllContactNumber extends StatefulWidget {
  const AllContactNumber({super.key});

  @override
  State<AllContactNumber> createState() => _AllContactNumberState();
}

class _AllContactNumberState extends State<AllContactNumber> {


  void fetchContacts() async{

    contacts = await FlutterContacts.getContacts(
        withProperties: true
    );
    setState(() {
      isLoading = false;
    });

  }

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


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: isLoading ? const Center( child: CircularProgressIndicator(),) :
      ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (context, index) => ListTile(
              title: Text(contacts[index].displayName),
              subtitle: Text(
                contacts[index].phones.isNotEmpty ? contacts[index].phones.first.number : '(none)',
                style: const TextStyle(fontSize: 16),
              ),
              leading: SizedBox(
                height: 50,
                width: 50,
                child: CircleAvatar(
                  backgroundColor: Colors.primaries[Random().nextInt(Colors.primaries.length)] ,
                  child: Text(contacts[index].displayName[0]),
                ),
              ),
              onTap: () async {
                final fullContact = await FlutterContacts.getContact(contacts[index].id);

                await Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => ContactPage(fullContact!)));
              })),
    );
  }
}
