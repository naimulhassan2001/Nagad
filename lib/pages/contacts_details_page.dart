import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';

class ContactPage extends StatelessWidget {
  final Contact contact;
  const ContactPage(this.contact, {super.key});

  @override
  Widget build(BuildContext context) =>
        MaterialApp(



        home: Scaffold(
          appBar: AppBar(
            title: Text(contact.displayName),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, ),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          body: Column(children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: CircleAvatar(
                    backgroundColor: Colors
                        .primaries[Random().nextInt(Colors.primaries.length)],
                    child: Text(
                      contact.displayName[0],
                      style: const TextStyle(fontSize: 100),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Name: ${contact.displayName}',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Phone number: ${contact.phones.isNotEmpty ? contact.phones.first.number : '(none)'}',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Email address: ${contact.emails.isNotEmpty ? contact.emails.first.address : '(none)'}',
                style: const TextStyle(fontSize: 16),
              ),

            ]),
        ),
      );
}
