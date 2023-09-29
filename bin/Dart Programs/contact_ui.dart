import 'package:flutter/material.dart';

void main() {
  runApp(ContactBookApp());
}

class ContactBookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Based Contact Book',
      home: ContactListScreen(),
    );
  }
}

class ContactListScreen extends StatelessWidget {
  final List<Contact> contacts = [
    Contact('Bruce Wayne', '7012772434'),
    Contact('Tyler Durden', '6879943752'),
    Contact('Jesse Pinkman', '8893257765'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Based Contacts'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];
          return ListTile(
            title: Text(contact.name),
            subtitle: Text(contact.phoneNumber),
            leading: CircleAvatar(
              child: Text(contact.name[0]),
              backgroundColor: Colors.black,
            ),
            onTap: () {
              // Handle tap on a contact (e.g., navigate to contact details).
            },
          );
        },
      ),
    );
  }
}

class Contact {
  final String name;
  final String phoneNumber;

  Contact(this.name, this.phoneNumber);
}
