import 'package:flutter/material.dart';

class Germany {
  String title;
  String cheif;

  Germany({
    required this.title,
    required this.cheif,
  });

  static List<Germany> samples = [
    Germany(
      title: "	البنود الالحاقية لمناقصة الأدوية نوبكو 2021 م	",
      cheif: "	2021100300	",
    ),
    Germany(
      title: "	ملحق مناقصة الادوية رقم 1 نوبكو لعام 2022	",
      cheif: "	2022100049	",
    ),
    Germany(
      title: "	مناقصة الاسنان نوبكو 2021	",
      cheif: "	2021100150	",
    ),
    Germany(
      title: "	مناقصة الامصال واللقاحات نوبكو 2021	",
      cheif: "	2021100132	",
    ),
    Germany(
      title: "	مناقصة الأدوية نوبكو 2021	",
      cheif: "	2021100131	",
    ),
    Germany(
      title: "	مناقصة التأهيل نوبكو 2021	",
      cheif: "	2021100152	",
    ),
    Germany(
      title: "	مناقصة العظام والعمود الفقري الرئيسية نوبكو 1 - 2022	",
      cheif: "	2022100013	",
    ),
    Germany(
      title: "	مناقصة العيون الاساسية نوبكو 2021	",
      cheif: "	2021100198	",
    ),
    Germany(
      title: "	مناقصة القلب الرئيسية مجزئة نوبكو 2021	",
      cheif: "	2021100210	",
    ),
    Germany(
      title: "	مناقصة القلب الرئيسية نوبكو 2021	",
      cheif: "	2021100209	",
    ),
    Germany(
      title: "	مناقصة الكيماويات نوبكو 2021	",
      cheif: "	2021100135	",
    ),
    Germany(
      title: "	مناقصة المبيدات الحشرية نوبكو 2021	",
      cheif: "	2021100136	",
    ),
    Germany(
      title: "	مناقصة النظائر المشعة نوبكو 2021	",
      cheif: "	2021100138	",
    ),
    Germany(
      title: "	مناقصة انف واذن وحنجرة نوبكو 2021	",
      cheif: "	2021100149	",
    ),
    Germany(
      title: "	مناقصة بنود الأدوية المجزئة نوبكو 2021	",
      cheif: "	2021100139	",
    ),
    Germany(
      title: "	مناقصة لوازم تجهيز المستشفيات نوبكو 2021	",
      cheif: "	2021100147	",
    ),
    Germany(
      title: "	مناقصة لوازم ومحاليل الكلية الصناعية نوبكو 2021 م	",
      cheif: "	2021100129	",
    ),
    Germany(
      title: "	مناقصة محاليل التغذية الوريدية نوبكو 2021	",
      cheif: "	2021100164	",
    ),
    Germany(
      title: "	مناقصة ملحق لوازم تجهيز المستشفيات نوبكو 2021 م	",
      cheif: "	2021100227	",
    ),
    Germany(
      title: "	مناقصه لوازم المختبرات الطبيه وخدمات نقل الدم نوبكو 2021 م	",
      cheif: "	1900100167	",
    ),


  ];
}

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  Widget buildRecipe(Germany ahmed) {
    return Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text(ahmed.cheif,style: TextStyle(color: Colors.amber, ),),

              SizedBox(
                height: 3.0,
              ),
              Text(
                ahmed.title,
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,color:Colors.deepOrangeAccent
                ),

              ),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("المناقصات الحالية "),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: buildRecipe(Germany.samples[index]),
            );
          },
          itemCount: Germany.samples.length,
        ),
      ),
    );
  }
}
