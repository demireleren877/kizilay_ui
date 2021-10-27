import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kizilay_ui/feature/helpers/constants.dart';

class BagisciOl extends StatelessWidget {
  Constants constants=Constants();
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
                    hintText: "Ad ve Soyad*",
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
                    hintText: "Tc Kimlik Numarası*",
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
                    hintText: "Mail Adresi*",
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
                    hintText: "Telefon Numarası*",
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
                    hintText: "Ülke*",
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
                    hintText: "Şehir*",
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
                    hintText: "İlçe*",
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
                    hintText: "Mahalle*",
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
                    hintText: "Sokak/Cadde*",
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
                    hintText: "Bina No*",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.r))
                  ),
                )
              ),
              SizedBox(height: 15.h),
              Container(
                width: 275.w,
                height: 44.h,
                child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(primary: Color(0xFFE1393A)) ,child: Text("Bağışçı Ol",style: TextStyle(color: Colors.white,fontSize: 16.sp),))
              ),
            ],
          ),
        ),
      ),
    );
  }
}