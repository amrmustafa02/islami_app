import 'package:flutter/material.dart';

class SabhaScreen extends StatefulWidget {
  SabhaScreen({Key? key}) : super(key: key);

  @override
  State<SabhaScreen> createState() => _SabhaScreenState();
}

class _SabhaScreenState extends State<SabhaScreen> {
  double _angle = 0;
  int numberOfTsbaha =0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Stack(
            alignment: Alignment.center,
            children: [
              InkWell(
                onTap: () {
                  _angle = _angle + 1;
                  numberOfTsbaha++;
                  setState(() {});
                },
                child: Transform.rotate(
                    angle: _angle,
                    child: Image.asset(
                      "assets/images/body_of_seb7a.png",
                      width: 250,
                      fit: BoxFit.fill,
                    )),
              ),
              Column(children: [
                const Text("عدد التسبيحات",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),),
                Text("$numberOfTsbaha",style: const TextStyle(fontSize: 20),),

              ],),
            ],
          ),
          const Spacer(),
          const Text("اضغظ علي السبحة",style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
          )),
          const Spacer(),
        ],
      ),
    );
  }
}
