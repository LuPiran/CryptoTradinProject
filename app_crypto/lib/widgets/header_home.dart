import 'package:app_crypto/utils/constants.dart';
import 'package:app_crypto/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: "Bem-vindo",
                color: kSecondaryTextColor,
                fontSize: 20,
              ),
              SizedBox(height: 2),
              TextWidget(
                text: "Lucas Piran",
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          const CircleAvatar(
            foregroundImage: AssetImage("assets/images/lucas_piran.png"),
            backgroundColor: kBackgroudColor,
            radius: 30,
          ),
        ],
      ),
    );
  }
}
