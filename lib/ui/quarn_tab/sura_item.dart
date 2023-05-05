import 'package:flutter/material.dart';
import 'package:islami_app/ui/quarn_tab/sura_model.dart';
import 'package:islami_app/ui/quarn_tab/sura_screen.dart';

// ignore: must_be_immutable
class SuraItem extends StatelessWidget {
  String suraName;
  int index;

  SuraItem(this.suraName, this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraScreen.routeName,
            arguments: SuraModel(suraName, index));
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          suraName,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
    );
  }
}
