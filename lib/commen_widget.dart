import 'package:flutter/material.dart';
import 'package:flutter_utilsx/custom_buttons/custom_buttons.dart';
import 'package:flutter_utilsx/dynamic_size_extenshions/size_extenshions.dart';
import 'package:get/get.dart';
import 'package:meal_task/values/custom_color_scheme.dart';

class MealWidget extends StatelessWidget {
  MealWidget({
    required this.title,
    required this.onAdd,
    this.isSelected = false,
     required this.firstText,
    required this.secondText,
    required this.firstCal,
    required this.secondCal,
    super.key,
  });
  VoidCallback onAdd;
  String title;
  bool isSelected;
  String firstText;
  String secondText;
  int firstCal;
  int secondCal;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Card(
                        color: CustomColor.primary,
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(Icons.account_balance_rounded,  color: Colors.black),
                          ),
                        ),
                      ),
                      20.widthBox,
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title, style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Chip(
                                label: Padding(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: Text("Edit"),
                                ),
                                shape: StadiumBorder(),
                                visualDensity: VisualDensity.comfortable,
                              ),
                              10.widthBox,
                              const Icon(Icons.bookmark_add_outlined, color: Colors.grey,)
                            ],
                          )
                        ],
                      ),

                    ],
                  ),
                  10.heightBox,
                  Visibility(
                    visible: isSelected,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: CustomColor.primary,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child:  Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                               Text(firstText, style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.black
                              ),),
                              const Spacer(),
                               Text("$firstCal Cals", style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.black

                              )),
                              10.widthBox,
                              const Icon(Icons.arrow_circle_right, color: Colors.black,)
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Divider(
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            children: [
                               Text(secondText, style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.black
                              ),),
                              const Spacer(),
                              Text("$secondCal Cals", style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.black

                              )),
                              10.widthBox,
                              const Icon(Icons.arrow_circle_right, color: Colors.black,)
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Divider(
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            children: [
                              const Text("Total", style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.teal
                              ),),
                              const Spacer(),
                               Text("${firstCal + secondCal} cals", style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.teal

                              )),
                              10.widthBox,
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: SweetButton(
                onPressed: onAdd,
                child: Container(
                  margin: const EdgeInsets.only(top: 5, right: 10),
                  width: 15.responsiveWidth,
                  height: 10.responsiveHeight,
                  decoration: BoxDecoration(
                    color: CustomColor.primary,
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child:  Card(
                    color: Colors.black,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                          topLeft: Radius.circular(5),

                        )
                    ),
                    child: Center(
                      child: Icon(isSelected? Icons.check_circle: Icons.add, size: 30, color: Colors.white,),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}