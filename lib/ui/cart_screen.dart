import 'package:flutter/material.dart';
import 'package:meal_task/controller/meals_controller.dart';
import 'package:get/get.dart';

import '../commen_widget.dart';


class CartScreen extends StatelessWidget {
   CartScreen({super.key});
 late final  MealController _mealControlle = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              ()=> ListView.builder(
                itemCount: _mealControlle.selectedMeale.length,
                itemBuilder: (context, index) {
                  return MealWidget(
                    title: _mealControlle.selectedMeale[index].name,
                     onAdd: (){
                       _mealControlle.selectedMealsCount.value--;
                       var dd = _mealControlle.mealsList.indexWhere((element) => element.name==_mealControlle.selectedMeale[index].name);
                       _mealControlle.mealsList[dd].selected=false;
                       _mealControlle.selectedMeale.remove(_mealControlle.selectedMeale[index]);
                       _mealControlle.selectedMealsCount.refresh();
                       _mealControlle.mealsList.refresh();
                     },
                    isSelected: true,
                    firstText: _mealControlle.selectedMeale[index].firstIngredientName,
                    secondText: _mealControlle.selectedMeale[index].secondIngredientName,
                    firstCal: _mealControlle.selectedMeale[index].firstIngredientCal,
                    secondCal: _mealControlle.selectedMeale[index].secondIngredientCal,
                  );
                },),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const Text("Total Cals" , style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold

                  ), ),
                  const Spacer(),
                  Obx(
                    ()=> Text("${_mealControlle.getTotalCals()}", style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

}
