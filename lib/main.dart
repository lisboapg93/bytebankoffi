// ignore_for_file: prefer_const_constructors
import 'package:bytebankoffi/database/app_database.dart';
import 'package:bytebankoffi/screens/contact_form.dart';
//import 'package:bytebankoffi/models/contact.dart';
//import 'package:bytebankoffi/screens/contact_list.dart';
//import 'package:bytebankoffi/screens/contact_form.dart';
//import 'package:bytebankoffi/screens/dashboard.dart';
// import 'package:bytebankoffi/screens/dashboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ByteBankApp());
    findAll().then((contacts) => debugPrint(contacts.toString()));
}

class ByteBankApp extends StatelessWidget {
  const ByteBankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.green[900],
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: Colors.blueAccent[700]),
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.blueAccent[700],
            textTheme: ButtonTextTheme.primary,
          )),
      debugShowCheckedModeBanner: false,
      home: ContactForm(),
    );
  }
}
