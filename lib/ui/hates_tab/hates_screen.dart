import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'hates_item.dart';

class HatesScreen extends StatefulWidget {
  @override
  State<HatesScreen> createState() => _HatesScreenState();
}

class _HatesScreenState extends State<HatesScreen> {
  List<String> hates_list = [];

  @override
  Widget build(BuildContext context) {
    if (hates_list.isEmpty) {
      loadFromFile();
    }
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Image.asset("assets/images/bg_hates.png")),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Theme.of(context).primaryColor,
            width: double.infinity,
            height: 2,
          ),
          const Text(
            "اسم الاحاديث",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            width: double.infinity,
            height: 2,
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) => HatesItem(index + 1,hates_list[index]),
                separatorBuilder: (context, index) => Container(
                      color: Theme.of(context).primaryColor,
                    ),
                itemCount: hates_list.length),
          ),
        ],
      ),
    );
  }

  void loadFromFile() async {
    String fileContent =
        await rootBundle.loadString("assets/ahates/ahadeth.txt");
    hates_list = fileContent.split("#");
    setState(() {});
  }
}
