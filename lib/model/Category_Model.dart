import 'dart:ui';

class CategoryModel {
  final String categoryname;
  final String categoryimage;
  final VoidCallback onTap;

  CategoryModel({
    required this.categoryname,
    required this.categoryimage,
    required this.onTap,
  });
}