import 'package:flutter/material.dart';
import 'package:islamic_app/view/Home_View.dart';

void main() {
  runApp(const IslamicApp());
}


class IslamicApp  extends StatelessWidget {
  const IslamicApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeView(),
    );
  }
}
