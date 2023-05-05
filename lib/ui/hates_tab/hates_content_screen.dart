import 'package:flutter/material.dart';
import 'package:islami_app/ui/hates_tab/hates_content_model.dart';

class HatesContentScreen extends StatelessWidget {
  static String routeName = "hates-content-screen";

  @override
  Widget build(BuildContext context) {
    var hatesModel = ModalRoute.of(context)?.settings.arguments as HatesModel;
    hatesModel.hatesContent = handleHates(hatesModel.hatesContent);

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg_home.png"),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text("اسلامي"),
        ),
        body: Card(
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
                  "${hatesModel.hatesNumber} " "الحديث رقم ",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  color: Theme.of(context).primaryColor,
                  height: 1,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Text(
                      hatesModel.hatesContent,
                      textDirection: TextDirection.rtl,
                      style: const TextStyle(
                        fontSize: 20
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String handleHates(String hates) {
    List<String> hatesContent = hates.split("\n");
    hatesContent.removeAt(0);
    return hatesContent.join();
  }
}
