import 'package:audioplayers/audioplayers.dart';

class ItemInfoModel {
  ItemInfoModel({ this.Itemmage, required this.sound, this.Itemname});
  final String? Itemmage;
  final String sound;
final String? Itemname;
  final AudioPlayer _player = AudioPlayer();

  Future<void> playSound() async {
    await _player.stop(); // يمنع تراكب الأصوات
    await _player.play(AssetSource(sound));
  }

  Future<void> stopSound() async {
    await _player.stop();
  }
}
