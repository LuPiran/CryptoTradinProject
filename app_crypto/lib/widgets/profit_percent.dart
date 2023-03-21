import 'package:app_crypto/utils/constants.dart';
import 'package:app_crypto/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfitPercent extends StatelessWidget {
  const ProfitPercent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 28,
      bottom: 28,
      child: Container(
        padding: const EdgeInsets.fromLTRB(6, 6, 8, 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: kBackgroudColor.withOpacity(0.4),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Icon(
              FontAwesomeIcons.caretUp,
              size: 16,
              color: Color(0xFFFFFFFF),
            ),
            SizedBox(width: 2),
            TextWidget(
              text: "+5.2%",
            ),
          ],
        ),
      ),
    );
  }
}
