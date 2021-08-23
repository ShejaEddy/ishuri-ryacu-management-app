import 'package:flutter/material.dart';
import 'package:ishuriryacu/UI/Utility/Resources.dart';
import 'package:ishuriryacu/UI/Utility/constants.dart';
import 'package:ishuriryacu/UI/Widgets/TopBar.dart';

class TransportationPage extends StatelessWidget {
  const TransportationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        child: kBackBtn,
        onPressed: () {
          kbackBtn(context);
        },
        title: string.transportation,
      ),
      body: Container(),
    );
  }
}
