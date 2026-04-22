import 'package:flutter/material.dart';

import '../model/ItemInfo_Model.dart';
import '../widgets/ItemInfo_Widget.dart';

class AbdelbasedView extends StatelessWidget {
   AbdelbasedView({super.key});
  final List<ItemInfoModel> Abdelbased =  [
    ItemInfoModel(Itemmage: 'assets/image/AlFatha.png', sound: 'sounds/Abdelbased/AlfathaAbdelbased.mp3'),
    ItemInfoModel(Itemmage: 'assets/image/AlFatha.png', sound: 'sounds/Abdelbased/AlfathaAbdelbased.mp3'),
    ItemInfoModel(Itemmage: 'assets/image/AlFatha.png', sound: 'sounds/Abdelbased/AlfathaAbdelbased.mp3'),
    ItemInfoModel(Itemmage: 'assets/image/AlFatha.png', sound: 'sounds/Abdelbased/AlfathaAbdelbased.mp3'),
    ItemInfoModel(Itemmage: 'assets/image/AlFatha.png', sound: 'sounds/Abdelbased/AlfathaAbdelbased.mp3'),
    ItemInfoModel(Itemmage: 'assets/image/AlFatha.png', sound: 'sounds/Abdelbased/AlfathaAbdelbased.mp3'),
    ItemInfoModel(Itemmage: 'assets/image/AlFatha.png', sound: 'sounds/Abdelbased/AlfathaAbdelbased.mp3'),
    ItemInfoModel(Itemmage: 'assets/image/AlFatha.png', sound: 'sounds/Abdelbased/AlfathaAbdelbased.mp3'),
    ItemInfoModel(Itemmage: 'assets/image/AlFatha.png', sound: 'sounds/Abdelbased/AlfathaAbdelbased.mp3'),
    ItemInfoModel(Itemmage: 'assets/image/AlFatha.png', sound: 'sounds/Abdelbased/AlfathaAbdelbased.mp3'),
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
              "عبد الباسط",
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
          itemCount: Abdelbased.length ,
          itemBuilder: (context,index){
            return SuraWidget(sura: Abdelbased[index]);
          }
      ),
    );
  }
}
