import 'package:flutter/material.dart';
import 'package:islamic_app/model/Category_Model.dart';
import 'package:islamic_app/widgets/Category_Widget.dart';

import 'Abdelbased_View.dart';
import 'MashariView.dart';

class Quranpage extends StatelessWidget {
  Quranpage({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoryModel> sheyo5 = [
      CategoryModel(
          categoryname: "مشاري راشد العفاسي" ,
          categoryimage: 'assets/image/mashary.jpg',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_)=> Mashariview(),
              ),
            );
          }
      ),
      CategoryModel(
          categoryname: "عبد الباسط عبد الصمد" ,
          categoryimage: 'assets/image/Abdelbased.jpg',
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_)=> AbdelbasedView() ));
          }),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "قرأن كريم",
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
        children: sheyo5.map((e) => CategoryWidget(category: e)).toList(),
      ),
    );
  }
}
