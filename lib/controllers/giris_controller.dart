import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:kizilay_ui/feature/screens/home_screen.dart';

class GirisController extends GetxController{
  void checkUser(String userName,String password){
    if(userName == "demireleren877@gmail.com" && password=="8033"){
      Get.to(()=>HomePage());
    }else{
      Fluttertoast.showToast(msg: "Hatalı Kullanıcı Adı veya Şifre!!");
    }
  }
}