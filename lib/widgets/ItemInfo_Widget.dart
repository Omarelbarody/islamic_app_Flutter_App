import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/model/ItemInfo_Model.dart';

class SuraWidget extends StatelessWidget {
  const SuraWidget({super.key, required this.sura});
  final ItemInfoModel sura;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {
            sura.playSound();
          },
          icon: Icon(Icons.play_arrow, color: Colors.blueGrey, size: 32),
        ),
        IconButton(
          onPressed: () {
            sura.stopSound();
          },
          icon: Icon(Icons.pause, color: Colors.blueGrey, size: 32),
        ),
        Spacer(flex: 1),
        Padding(
          padding: const EdgeInsets.all(2),
          child: Container(
            height: 100,
            child: Image.asset(sura.Itemmage!),
          ),
        ),
      ],
    );
  }
}
