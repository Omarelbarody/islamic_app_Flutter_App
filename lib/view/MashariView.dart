import 'package:flutter/material.dart';
import 'package:islamic_app/model/ItemInfo_Model.dart';
import 'package:islamic_app/widgets/ItemInfo_Widget.dart';

class Mashariview extends StatelessWidget {
   Mashariview({super.key});
final List<ItemInfoModel> mashary =  [
  ItemInfoModel(Itemmage: 'assets/image/AlFatha.png', sound: 'sounds/mashary/Alfatha.mp3'),
  ItemInfoModel(Itemmage: 'assets/image/AlFatha.png', sound: 'sounds/mashary/Alfatha.mp3'),
  ItemInfoModel(Itemmage: 'assets/image/AlFatha.png', sound: 'sounds/mashary/Alfatha.mp3'),
  ItemInfoModel(Itemmage: 'assets/image/AlFatha.png', sound: 'sounds/mashary/Alfatha.mp3'),
  ItemInfoModel(Itemmage: 'assets/image/AlFatha.png', sound: 'sounds/mashary/Alfatha.mp3'),
  ItemInfoModel(Itemmage: 'assets/image/AlFatha.png', sound: 'sounds/mashary/Alfatha.mp3'),
  ItemInfoModel(Itemmage: 'assets/image/AlFatha.png', sound: 'sounds/mashary/Alfatha.mp3'),
  ItemInfoModel(Itemmage: 'assets/image/AlFatha.png', sound: 'sounds/mashary/Alfatha.mp3'),
  ItemInfoModel(Itemmage: 'assets/image/AlFatha.png', sound: 'sounds/mashary/Alfatha.mp3'),
  ItemInfoModel(Itemmage: 'assets/image/AlFatha.png', sound: 'sounds/mashary/Alfatha.mp3'),

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "مشاري راشد",
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
      body:   ListView.builder(
          itemCount: mashary.length ,
          itemBuilder: (context,index){
            return SuraWidget(sura: mashary[index]);
          }
      ),
    );

  }
}
