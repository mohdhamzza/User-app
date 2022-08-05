
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user_food_app/Widgets/big_text.dart';
import 'package:user_food_app/Widgets/small_text.dart';
import 'package:user_food_app/home/food_page_body.dart';
import 'package:user_food_app/utils/colors.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //shwing the header
          Container(
            child: Container(
              margin: EdgeInsets.only(top:45,bottom: 15),
              padding: EdgeInsets.only(left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                     BigText(text: "India", color: AppColors.mainColor, ),
                     Row(
                       children: [
                       SmallText(text: "Delhi", color: Colors.black54),
                       Icon(Icons.arrow_drop_down_rounded)

                     ],)


                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    child: Icon(Icons.search,color: Colors.white,),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.mainColor,
                    ),
                  ),

                ],
              ),
            ),
          ),
          //showing the body
          FoodPageBody(),
        ],
      )
    );
  }
}
