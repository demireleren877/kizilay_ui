import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kizilay_ui/feature/helpers/text_constants.dart';

class WidgetConstants {
  TextConstants textConstants = TextConstants();
  String kizilaylogo = "https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/T%C3%BCrk_K%C4%B1z%C4%B1lay_logo.svg/655px-T%C3%BCrk_K%C4%B1z%C4%B1lay_logo.svg.png";
  Widget logo = Container(
        height: 156.h,
        width: 100.w,
        child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/T%C3%BCrk_K%C4%B1z%C4%B1lay_logo.svg/655px-T%C3%BCrk_K%C4%B1z%C4%B1lay_logo.svg.png"),
    );

  Widget topbar(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: (){
              FocusScope.of(context).unfocus();
              Future.delayed(Duration(milliseconds: 100),()=> Get.back());
              },
            child: Icon(Icons.arrow_back,size: 25.sp,)),
          Row(
            children: [
              Text(textConstants.sorunbildir,style: TextStyle(fontSize: 20.sp,color: Colors.red),),
              SizedBox(width: 10),
              Icon(Icons.phone,size: 30.sp,color: Colors.red),
            ],
          )
          
        ],
      );
  
}