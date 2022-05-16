// ignore_for_file: prefer_const_constructors
import 'package:bytebankoffi/models/contact.dart';
import 'package:bytebankoffi/screens/contact_form.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
 ContactList({Key? key}) : super(key: key);

  final List<Contact> constacts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts'),
      ),
      body: ListView.builder(
        itemBuilder: ((context, index) {
        final Contact contact = contacts[index];  
          return _ContactItem(contact);
        }
        itemCount: contacts.lenght,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => ContactForm(),
                ),
              )
              .then(
                (newContact) => debugPrint(newContact.toString()),
              );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class _ContactItem extends StatelessWidget {
  const _ContactItem({Key? key}) : super(key: key);

  final Contact contact;
  _ContactItem(this.contact);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          contact.name,
          style: TextStyle(fontSize: 24.0),
        ),
        subtitle: Text(
          contact.accountNumber.toString(),
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
