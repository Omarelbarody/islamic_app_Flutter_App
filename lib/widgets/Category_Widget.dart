import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamic_app/model/Category_Model.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({super.key, required this.category});
  CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            category.categoryname,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 40,
              fontWeight: FontWeight.w500,
              fontFamily: "Rakkas"
            ),
          ),
          GestureDetector(
            onTap: category.onTap,
            child: Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusGeometry.circular(20),
                image: DecorationImage(
                  image: AssetImage(category.categoryimage),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
