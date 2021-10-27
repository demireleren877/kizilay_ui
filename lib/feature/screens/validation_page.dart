import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kizilay_ui/feature/helpers/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'giris_yap.dart';

class ValidationPage extends StatelessWidget {
  Constants constants = Constants();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(children: [
              constants.topbar(context),
              SizedBox(height: 60.h),
              constants.logo,
              SizedBox(height: 40.h),
              Center(child: Text("01:30",style: GoogleFonts.openSans().copyWith(fontSize: 24.sp,fontWeight: FontWeight.w300),)),
              SizedBox(height: 10.h),
              LinearProgressIndicator(
                value: .5,
                backgroundColor: Colors.grey[300],
                color: Colors.red,
              ),
              SizedBox(height: 40.h),
              Container(
                height: 44.h,
                width: 335.w,
                child:TextField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 16.sp),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: "Telefonunuza Gelen Kodu Giriniz",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.r))
                  ),
                )
              ),
              SizedBox(height: 40.h),
              Container(
                  width: 275.w,
                  height: 44.h,
                  child: ElevatedButton(onPressed: (){
                    
                  },style: ElevatedButton.styleFrom(primary: Color(0xFFE1393A)) ,child: Text("Giriş Yap",style: TextStyle(color: Colors.white,fontSize: 16.sp),),)
                ),
              SizedBox(height: 10.h),
              Container(
                  width: 275.w,
                  height: 44.h,
                  child: ElevatedButton(onPressed: (){
                    
                  },style: ElevatedButton.styleFrom(primary: Color(0xFFE1393A)) ,child: Text("Kodu Tekrar Gönder",style: TextStyle(color: Colors.white,fontSize: 16.sp),),)
                ),
            ],),
          ),
        ),
      ),
    );
  }
}