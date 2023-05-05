import 'package:flutter/material.dart';
import 'package:islami_app/ui/quarn_tab/sura_item.dart';

class MoshafScreen extends StatelessWidget {
  List<String> surasNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
  List<SuraItem> list_view = [];

  MoshafScreen({super.key}) {
    initialSuars();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: Image.asset("assets/images/bg_moshaf.png")),
        const SizedBox(
          height: 10,
        ),
        Container(
          color: Theme.of(context).primaryColor,
          width: double.infinity,
          height: 2,
        ),
        const Text(
          "اسم السورة",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
        Container(
          color: Theme.of(context).primaryColor,
          width: double.infinity,
          height: 2,
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (buildContext, index) {
                return list_view[index];
              },
              separatorBuilder: (buildContext, index) {
                return Container(
                  color: Theme.of(context).primaryColor,
                  width: double.infinity,
                  height: 2,
                  margin: const EdgeInsets.symmetric(horizontal: 0),
                );
              },
              itemCount: list_view.length),
        )
      ],
    );
  }

  void initialSuars() {
    for (int i = 0; i < surasNames.length; i++) {
      SuraItem suraItem = SuraItem(surasNames[i],i+1);
      list_view.add(suraItem);
    }
  }
}
