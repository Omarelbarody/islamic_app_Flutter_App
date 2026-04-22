import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/model/ItemInfo_Model.dart';

class SunaWidget extends StatelessWidget {
  const SunaWidget({super.key, required this.suna});
  final ItemInfoModel suna;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {
            suna.playSound();
          },
          icon: Icon(Icons.play_arrow, color: Colors.blueGrey, size: 32),
        ),
        IconButton(
          onPressed: () {
            suna.stopSound();
          },
          icon: Icon(Icons.pause, color: Colors.blueGrey, size: 32),
        ),
        Spacer(flex: 1),
        Text(
          suna.Itemname!,
          style: TextStyle(
            color: Colors.blueGrey,
            fontSize: 40,
            fontWeight: FontWeight.w500,
            fontFamily: "Rakkas",
          ),
        ),
      ],
    );
  }
}
