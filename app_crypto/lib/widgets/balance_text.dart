import 'package:app_crypto/mocks/mock_balance.dart';
import 'package:app_crypto/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class BalanceText extends StatelessWidget {
  const BalanceText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextWidget(
            text: "Equilíbrio",
            fontSize: 18,
          ),
          const SizedBox(height: 4),
          TextWidget(
            text: NumberFormat.simpleCurrency().format(MockBalance.data.last),
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
          const Spacer(),
          const TextWidget(
            text: "Lucro hoje",
            fontSize: 18,
          ),
          const SizedBox(height: 4),
          const TextWidget(
            text: "\$201.12",
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
