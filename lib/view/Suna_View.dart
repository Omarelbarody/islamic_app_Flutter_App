import 'package:flutter/material.dart';

import '../model/ItemInfo_Model.dart';
import '../widgets/ItemInfo_Widget.dart';
import '../widgets/Suna_widget.dart';

class SunaView extends StatelessWidget {
   SunaView({super.key});
  final List<ItemInfoModel> sunas =  [
    ItemInfoModel(Itemname: "فضل قيام الليل", sound: 'sounds/mashary/قيام الليل.mp3'),
    ItemInfoModel(Itemname: "فضل قيام الليل", sound: 'sounds/mashary/قيام الليل.mp3'),
    ItemInfoModel(Itemname: "فضل قيام الليل", sound: 'sounds/mashary/قيام الليل.mp3'),
    ItemInfoModel(Itemname: "فضل قيام الليل", sound: 'sounds/mashary/قيام الليل.mp3'),
    ItemInfoModel(Itemname: "فضل قيام الليل", sound: 'sounds/mashary/قيام الليل.mp3'),
    ItemInfoModel(Itemname: "فضل قيام الليل", sound: 'sounds/mashary/قيام الليل.mp3'),
    ItemInfoModel(Itemname: "فضل قيام الليل", sound: 'sounds/mashary/قيام الليل.mp3'),
    ItemInfoModel(Itemname: "فضل قيام الليل", sound: 'sounds/mashary/قيام الليل.mp3'),
    ItemInfoModel(Itemname: "فضل قيام الليل", sound: 'sounds/mashary/قيام الليل.mp3'),
    ItemInfoModel(Itemname: "فضل قيام الليل", sound: 'sounds/mashary/قيام الليل.mp3'),
    ItemInfoModel(Itemname: "فضل قيام الليل", sound: 'sounds/mashary/قيام الليل.mp3'),
    ItemInfoModel(Itemname: "فضل قيام الليل", sound: 'sounds/mashary/قيام الليل.mp3'),
    ItemInfoModel(Itemname: "فضل قيام الليل", sound: 'sounds/mashary/قيام الليل.mp3'),
    ItemInfoModel(Itemname: "فضل قيام الليل", sound: 'sounds/mashary/قيام الليل.mp3'),
    ItemInfoModel(Itemname: "فضل قيام الليل", sound: 'sounds/mashary/قيام الليل.mp3'),
    ItemInfoModel(Itemname: "فضل قيام الليل", sound: 'sounds/mashary/قيام الليل.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "السنة النبوية",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w500,
                fontFamily: "Rakkas",
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
          itemCount: sunas.length ,
          itemBuilder: (context,index){
            return SunaWidget(suna: sunas[index]);
          }
      ),
    );
  }
}
