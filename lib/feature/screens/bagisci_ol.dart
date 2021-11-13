import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kizilay_ui/feature/helpers/text_constants.dart';
import 'package:kizilay_ui/feature/helpers/widget_constants.dart';

class BagisciOl extends StatelessWidget {
  TextConstants textConstants = TextConstants();
  WidgetConstants constants=WidgetConstants();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [              
              constants.topbar(context),
              SizedBox(height: 50.h),
              constants.logo,
              SizedBox(height: 50.h),
              Container(
                height: 44.h,
                width: 335.w,
                child:TextField(
                  style: TextStyle(fontSize: 16.sp),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: textConstants.adsoyad,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.r))
                  ),
                )
              ),
              SizedBox(height: 15.h),
              Container(
                height: 44.h,
                width: 335.w,
                child:TextField(
                  style: TextStyle(fontSize: 16.sp),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: textConstants.tcno,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.r))
                  ),
                )
              ),
              SizedBox(height: 15.h),
              Container(
                height: 44.h,
                width: 335.w,
                child:TextField(
                  style: TextStyle(fontSize: 16.sp),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: textConstants.mail,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.r))
                  ),
                )
              ),
              SizedBox(height: 15.h),
              Container(
                height: 44.h,
                width: 335.w,
                child:TextField(
                  style: TextStyle(fontSize: 16.sp),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: textConstants.telno,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.r))
                  ),
                )
              ),
              SizedBox(height: 15.h),
              Container(
                height: 44.h,
                width: 335.w,
                child:TextField(
                  style: TextStyle(fontSize: 16.sp),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: textConstants.ulke,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.r))
                  ),
                )
              ),
              SizedBox(height: 15.h),
              Container(
                height: 44.h,
                width: 335.w,
                child:TextField(
                  style: TextStyle(fontSize: 16.sp),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: textConstants.sehir,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.r))
                  ),
                )
              ),
              SizedBox(height: 15.h),
              Container(
                height: 44.h,
                width: 335.w,
                child:TextField(
                  style: TextStyle(fontSize: 16.sp),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: textConstants.ilce,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.r))
                  ),
                )
              ),
              SizedBox(height: 15.h),
              Container(
                height: 44.h,
                width: 335.w,
                child:TextField(
                  style: TextStyle(fontSize: 16.sp),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: textConstants.mahalle,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.r))
                  ),
                )
              ),
              SizedBox(height: 15.h),
              Container(
                height: 44.h,
                width: 335.w,
                child:TextField(
                  style: TextStyle(fontSize: 16.sp),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: textConstants.sokak,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.r))
                  ),
                )
              ),
              SizedBox(height: 15.h),
              Container(
                height: 44.h,
                width: 335.w,
                child:TextField(
                  style: TextStyle(fontSize: 16.sp),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: textConstants.binano,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.r))
                  ),
                )
              ),
              SizedBox(height: 15.h),
              Container(
                width: 275.w,
                height: 44.h,
                child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(primary: Color(0xFFE1393A)) ,child: Text(textConstants.signup,style: TextStyle(color: Colors.white,fontSize: 16.sp),))
              ),
            ],
          ),
        ),
      ),
    );
  }
}