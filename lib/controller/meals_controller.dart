import 'package:get/get.dart';
import 'package:meal_task/model/meals_model.dart';
class MealController extends GetxController{
  RxList<MealModel> mealsList = [
    MealModel(name: "Meal 1",
        firstIngredientName: "Ingredient 1",
        secondIngredientName: "Ingredient 2",
        firstIngredientCal: 100,
        secondIngredientCal: 200,
        selected: false),
    MealModel(name: "Meal 2",
        firstIngredientName: "Ingredient 1",
        secondIngredientName: "Ingredient 2",
        firstIngredientCal: 100,
        secondIngredientCal: 200,
        selected: false),
    MealModel(name: "Meal 3",
        firstIngredientName: "Ingredient 1",
        secondIngredientName: "Ingredient 2",
        firstIngredientCal: 100,
        secondIngredientCal: 200,
        selected: false),
    MealModel(name: "Meal 4",
        firstIngredientName: "Ingredient 1",
        secondIngredientName: "Ingredient 2",
        firstIngredientCal: 100,
        secondIngredientCal: 200,
        selected: false),
    MealModel(name: "Meal 5",
        firstIngredientName: "Ingredient 1",
        secondIngredientName: "Ingredient 2",
        firstIngredientCal: 100,
        secondIngredientCal: 200,
        selected: false),
    MealModel(name: "Meal 6",
        firstIngredientName: "Ingredient 1",
        secondIngredientName: "Ingredient 2",
        firstIngredientCal: 100,
        secondIngredientCal: 200,
        selected: false),
  ].obs;

  RxInt selectedMealsCount = 0.obs;
  RxList<MealModel> selectedMeale = <MealModel>[].obs;

  int getTotalCals(){
    int totalCals = 0;
    for(int i=0; i<selectedMeale.length; i++){
      totalCals += selectedMeale[i].firstIngredientCal + selectedMeale[i].secondIngredientCal;
    }
    return totalCals;
  }


}