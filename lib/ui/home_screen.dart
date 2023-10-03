import 'package:flutter/material.dart';
import 'package:flutter_utilsx/custom_buttons/custom_buttons.dart';
import 'package:flutter_utilsx/custom_utils/custom_utils.dart';
import 'package:flutter_utilsx/dynamic_size_extenshions/size_extenshions.dart';
import 'package:get/get.dart';
import 'package:meal_task/values/custom_color_scheme.dart';
import 'package:meal_task/values/routes_named.dart';
import 'package:meal_task/values/utils/dummy_jsons_utils.dart';
import 'package:badges/badges.dart' as badges;

import '../commen_widget.dart';
import '../controller/meals_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 late MealController mealController=Get.put(MealController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         if(mealController.mealsList.isNotEmpty){
           Get.toNamed(NamedRoutes.cartScreen);
         }
        },
        child:  badges.Badge(
            badgeContent: Obx(() => Text("${mealController.selectedMealsCount}", style: const TextStyle(
                color: Colors.white
            ),)),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.shopping_cart),
            )),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Meals", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black),),
        actions: [
          const Icon(Icons.favorite, color: Colors.grey,),
          PopupMenuButton(
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 1,
                child: Text("List", style: TextStyle(
                  fontSize: 20
                ),),
              ),
            ],
          ),
        ],
      ),
      body:Obx(() =>  ListView.builder(
        itemCount: mealController.mealsList.length,
        itemBuilder: (context, index) {
          return MealWidget(
            title: mealController.mealsList[index].name,
            onAdd: (){
              mealController.mealsList[index].selected = !mealController.mealsList[index].selected;
              mealController.selectedMealsCount.value=mealController.mealsList.where((element) => element.selected).length;
              if(mealController.mealsList[index].selected){
                mealController.mealsList[index].selected=true;
                mealController.selectedMeale.add(mealController.mealsList[index]);}
              else{
                mealController.mealsList[index].selected=false;
                mealController.selectedMeale.remove(mealController.mealsList[index]);
              }
              mealController.mealsList.refresh();
            },
            isSelected: mealController.mealsList[index].selected,
            firstText: mealController.mealsList[index].firstIngredientName,
            secondText: mealController.mealsList[index].secondIngredientName,
            firstCal: mealController.mealsList[index].firstIngredientCal,
            secondCal: mealController.mealsList[index].secondIngredientCal,
          );
        },))
    );
  }
}


