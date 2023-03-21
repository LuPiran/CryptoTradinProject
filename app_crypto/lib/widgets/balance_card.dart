import 'package:app_crypto/widgets/balance_background.dart';
import 'package:app_crypto/widgets/balance_text.dart';
import 'package:app_crypto/widgets/profit_percent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: SizedBox(
        height: 200,
        child: Stack(
          children: [
            const BalanceBackground(),
            BalanceText(),
            ProfitPercent(),
          ],
        ),
      ),
    );
  }
}
