import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kizilay_ui/feature/helpers/constants.dart';
import 'package:kizilay_ui/feature/screens/bagisci_ol.dart';
import 'package:kizilay_ui/feature/screens/giris_yap.dart';

class StartPage extends StatelessWidget {
  
  Constants constants = Constants();

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
                  Text("Sorun Bildir",style: TextStyle(fontSize: 20.sp,color: Colors.red),),
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
              Text("KAN DOSTUM",style: GoogleFonts.openSans().copyWith(fontSize: 45.sp,fontWeight: FontWeight.bold)),
              SizedBox(height: 100.h),
              Container(
                width: 275.w,
                height: 44.h,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>GirisYap()));
                },style: ElevatedButton.styleFrom(primary: Color(0xFFE1393A)) ,child: Text("Giriş Yap",style: TextStyle(color: Colors.white,fontSize: 16.sp),),)
              ),
              SizedBox(height: 20.h),
              Container(
                width: 275.w,
                height: 44.h,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> BagisciOl()));
                },style: ElevatedButton.styleFrom(primary: Color(0xFFE1393A)) ,child: Text("Bağışçı Ol",style: TextStyle(color: Colors.white,fontSize: 16.sp),))
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}