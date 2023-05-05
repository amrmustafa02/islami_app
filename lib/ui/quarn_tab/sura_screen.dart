import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/ui/quarn_tab/sura_model.dart';

// ignore: must_be_immutable
class SuraScreen extends StatefulWidget {
  static String routeName = "sura-screen";

  SuraScreen({super.key});

  @override
  State<SuraScreen> createState() => _SuraScreenState();
}

class _SuraScreenState extends State<SuraScreen> {
  List<String> suraContent = [];

  @override
  Widget build(BuildContext context) {
    var suraModel = ModalRoute.of(context)?.settings.arguments as SuraModel;
    // check if content is empty
    // then load from file
    if (suraContent.isEmpty) {
      loadFromFile(suraModel.index);
    }
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg_home.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("اسلامي"),
        ),
        body: Center(
          child: Card(
            margin: const EdgeInsets.all(25),
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    " سورة ${suraModel.suraName}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    color: Theme.of(context).primaryColor,
                    height: 1,
                  ),
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) => Text(
                        "${suraContent[index]}﴿$index﴾",
                        textDirection: TextDirection.rtl,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      itemCount: suraContent.length,
                      separatorBuilder: (_, __) => Container(
                        height: 1,
                        color: Theme.of(context).primaryColor,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void loadFromFile(int index) async {
    String sura_content =
        await rootBundle.loadString("assets/suras_files/$index.txt");

    suraContent = sura_content.split("\n");
    for (int i = suraContent.length - 1; i >= 0; i--) {
      if (suraContent[i].length<=2) {
        suraContent.removeAt(i);
        i = suraContent.length;
      }
    }

    // update screen
    setState(() {});
  }
}
