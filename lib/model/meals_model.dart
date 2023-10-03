class MealModel{
  final String name;
  bool selected;
  final String firstIngredientName;
  final String secondIngredientName;
  final int firstIngredientCal;
  final int secondIngredientCal;
  MealModel({this.name="",
    this.firstIngredientName="",
    this.secondIngredientName="",
    this.firstIngredientCal=0,
    this.secondIngredientCal=0
  ,this.selected=false});
}