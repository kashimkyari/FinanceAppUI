import 'package:flutter/material.dart';
import 'package:myapp/data.dart';
import 'package:myapp/welcomeScreen.dart';
import 'package:myapp/widgets/cardSection.dart';
import 'package:myapp/widgets/expenses.dart';
import 'package:myapp/widgets/header.dart';

void main() {
  runApp(MaterialApp(
    home: WelcomeScreen(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        scaffoldBackgroundColor: primaryColor, fontFamily: "Circular"),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: 120,
            child: WalletHeader(),
          ),
          Expanded(
            child: CardSection(),
          ),
          Expanded(child: ExpenseSection()),
        ],
      ),
    );
  }
}
