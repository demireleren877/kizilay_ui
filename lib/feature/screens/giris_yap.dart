import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kizilay_ui/controllers/giris_controller.dart';
import 'package:kizilay_ui/feature/helpers/widget_constants.dart';
import 'package:kartal/kartal.dart';
import 'package:kizilay_ui/feature/screens/validation_page.dart';

class GirisYap extends StatefulWidget {
  const GirisYap({ Key? key }) : super(key: key);

  @override
  _GirisYapState createState() => _GirisYapState();
}
GirisController girisController = Get.put(GirisController());
class _GirisYapState extends State<GirisYap> with TickerProviderStateMixin {
  WidgetConstants constants = WidgetConstants();
  late TabController tabController ;
  @override
  void initState() {
    tabController = TabController(vsync: this,length: 3,initialIndex: 0);
    super.initState();
    
  }
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [              
              constants.topbar(context),
              SizedBox(height: 60.h),
              constants.logo,
              SizedBox(height: 40.h),
              tabbar(tabController: tabController),
              SizedBox(height: 40.h),
              tabbar_view(tabController: tabController),
            ],
          ),
        ),
      ),
    );
  }
}

class tabbar_view extends StatelessWidget {
  const tabbar_view({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320.h,
      child: TabBarView(
        physics: BouncingScrollPhysics(),
        controller: tabController,
        children: [
          tc_giris(),
          telno_giris(),
          mail_giris(),
          
        ],
      ),
    );
  }
}

class mail_giris extends StatelessWidget {
  TextEditingController email=TextEditingController();
  TextEditingController pass= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 44.h,
          width: 335.w,
          child:TextField(
            controller: email,
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
          child:TextFormField( 
            controller: pass,
            onChanged: (text){
              text=pass.text;
            }, 
            style: TextStyle(fontSize: 16.sp),                        
            decoration: InputDecoration(                              
              contentPadding: EdgeInsets.all(10),
              hintText: "Şifre*",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.r)),
              suffixIcon: Icon(Icons.highlight_remove_rounded,size: 20.sp,)
            ),
            obscureText: true,
          )
        ),
        SizedBox(height: 10.h),
        GestureDetector(
          child: Container(
            width: 330.w,
            alignment: Alignment.topRight,
            child: Text("Şifremi Unuttum",style: TextStyle(fontSize: 16.sp),),
          ),
        ),
        SizedBox(height: 50.h),
        Container(
          width: 150.w,
          height: 44.h,
          child: ElevatedButton(onPressed: (){
            girisController.checkUser(email.text, pass.text);
          },style: ElevatedButton.styleFrom(primary: Color(0xFFE1393A)) ,child: Text("Giriş Yap",style: TextStyle(color: Colors.white,fontSize: 16.sp),),)
        ),
      ],
    );
  }
}

class telno_giris extends StatelessWidget {
  const telno_giris({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
          child:TextFormField(   
            style: TextStyle(fontSize: 16.sp),                       
            decoration: InputDecoration(                              
              contentPadding: EdgeInsets.all(10),
              hintText: "Şifre*",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.r)),
              suffixIcon: Icon(Icons.highlight_remove_rounded,size:20.sp)
            ),
            obscureText: true,
          )
        ),
        SizedBox(height: 10.h),
        GestureDetector(
          child: Container(
            width: 330.w,
            alignment: Alignment.topRight,
            child: Text("Şifremi Unuttum",style: TextStyle(fontSize: 16.sp),),
          ),
        ),
        SizedBox(height: 50.h),
        Container(
          width: 150.w,
          height: 44.h,
          child: ElevatedButton(onPressed: (){
            Get.to(()=>ValidationPage());
          },style: ElevatedButton.styleFrom(primary: Color(0xFFE1393A)) ,child: Text("Giriş Yap",style: TextStyle(color: Colors.white,fontSize: 16.sp),),)
        ),
      ],
    );
  }
}

class tc_giris extends StatelessWidget {
  const tc_giris({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 44.h,
          width: 335.w,
          child:TextField(
            style: TextStyle(fontSize: 16.sp),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(10),
              hintText: "TC Kimlik Numarası*",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.r))
            ),
          )
        ),
        SizedBox(height: 15.h),
        Container(
          height: 44.h,
          width: 335.w,
          child:TextFormField(     
            style: TextStyle(fontSize: 16.sp),                     
            decoration: InputDecoration(                              
              contentPadding: EdgeInsets.all(10),
              hintText: "Şifre*",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.r)),
              suffixIcon: Icon(Icons.highlight_remove_rounded,size:20.sp)
            ),
            obscureText: true,
          )
        ),
        SizedBox(height: 10.h),
        GestureDetector(
          child: Container(
            width: 330.w,
            alignment: Alignment.topRight,
            child: Text("Şifremi Unuttum",style: TextStyle(fontSize: 16.sp),),
          ),
        ),
        SizedBox(height: 50.h),
        Container(
          width: 150.w,
          height: 44.h,
          child: ElevatedButton(onPressed: (){
            Get.to(()=>ValidationPage());
          },style: ElevatedButton.styleFrom(primary: Color(0xFFE1393A)) ,child: Text("Giriş Yap",style: TextStyle(color: Colors.white,fontSize: 16.sp),),)
        ),
      ],
    );
  }
}

class tabbar extends StatelessWidget {
  const tabbar({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController ,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r),
        color: Color(0xFFE1393E)
      ),
      unselectedLabelColor: Colors.black,
      tabs:  [
      Tab(child: Text("TC Kimlik NO",style: TextStyle(fontSize: 15.sp),)),
      Tab(child: Text("Telefon No",style: TextStyle(fontSize: 15.sp))),
      Tab(child: Text("Mail Adresi",style: TextStyle(fontSize: 15.sp))),
    ]);
  }
}
