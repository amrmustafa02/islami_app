import 'package:flutter/material.dart';
import 'package:islami_app/ui/hates_tab/hates_content_model.dart';
import 'package:islami_app/ui/hates_tab/hates_content_screen.dart';

class HatesItem extends StatelessWidget {
  int index;
  String hatesContent;
  HatesItem(this.index,this.hatesContent, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HatesContentScreen.routeName,
            arguments: HatesModel(index, hatesContent));
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
         "$index ""الحديث رقم ",
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
    );

  }
}
