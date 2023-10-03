import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_utilsx/dynamic_size_extenshions/size_extenshions.dart';
import 'package:get/get.dart';
import 'package:meal_task/values/routes_named.dart';

class Splac extends StatefulWidget {
  const Splac({super.key});

  @override
  State<Splac> createState() => _SplacState();
}

class _SplacState extends State<Splac> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(
      seconds: 3,
    ), ()=> Get.offAllNamed(NamedRoutes.home));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 10.responsiveHeight,
          ),
          const Center(
            child: FlutterLogo(
              size: 200,
            ),
          ),
          SizedBox(
            height: 10.responsiveHeight,
          ),
          const CircularProgressIndicator(
            color: Colors.blueGrey,
          ),
          20.heightBox,
        ],
      )
    );
  }
}
