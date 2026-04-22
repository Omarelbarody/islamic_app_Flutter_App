import 'package:flutter/material.dart';
import 'package:islamic_app/model/Category_Model.dart';
import 'package:islamic_app/widgets/Category_Widget.dart';

import 'QuranPage.dart';
import 'Suna_View.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CategoryModel> categories = [
      CategoryModel(
        categoryname: " قرأن كريم" ,
        categoryimage: "assets/image/Quran.jpg",
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => Quranpage(),
            ),
          );
        },
      ),
      CategoryModel(
        categoryname: "السنة النبوية" ,
        categoryimage: "assets/image/Suna.jpg",
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_)=>SunaView()));
        },
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "و ذكر",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Rakkas"
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: categories.map((e) => CategoryWidget(category: e)).toList()),

      );
  }
}