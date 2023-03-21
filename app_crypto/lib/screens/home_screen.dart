import 'package:app_crypto/widgets/balance_card.dart';
import 'package:app_crypto/widgets/header_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(top: 64, bottom: 24),
        children: [
          HeaderHome(),
          const SizedBox(height: 36),
          BalanceCard(),
        ],
      ),
    );
  }
}
