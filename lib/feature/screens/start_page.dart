import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kizilay_ui/feature/helpers/text_constants.dart';
import 'package:kizilay_ui/feature/helpers/widget_constants.dart';
import 'package:kizilay_ui/feature/screens/bagisci_ol.dart';
import 'package:kizilay_ui/feature/screens/giris_yap.dart';

class StartPage extends StatelessWidget {
  
  WidgetConstants constants = WidgetConstants();
  TextConstants textConstants = TextConstants();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(textConstants.sorunbildir,style: TextStyle(fontSize: 20.sp,color: Colors.red),),
                  SizedBox(width: 10.w),
                  Icon(Icons.phone,size: 30.sp,color: Colors.red),
                  SizedBox(width: 15.w)
                ],
              ),
              SizedBox(height: 60.h),
              Container(
                height: 250.h,
                child: Image.network(constants.kizilaylogo),
              ),
              Text(textConstants.starttitle,style: GoogleFonts.openSans().copyWith(fontSize: 45.sp,fontWeight: FontWeight.bold)),
              SizedBox(height: 100.h),
              Container(
                width: 275.w,
                height: 44.h,
                child: ElevatedButton(onPressed: (){
                  Get.to(()=>GirisYap());
                },style: ElevatedButton.styleFrom(primary: Color(0xFFE1393A)) ,child: Text(textConstants.login,style: TextStyle(color: Colors.white,fontSize: 16.sp),),)
              ),
              SizedBox(height: 20.h),
              Container(
                width: 275.w,
                height: 44.h,
                child: ElevatedButton(onPressed: (){
                  Get.to(()=>BagisciOl());
                },style: ElevatedButton.styleFrom(primary: Color(0xFFE1393A)) ,child: Text(textConstants.signup,style: TextStyle(color: Colors.white,fontSize: 16.sp),))
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}