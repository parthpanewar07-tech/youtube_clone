import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ChangeTextController extends GetxController{
  RxString msg ="Hello World!".obs;
  RxInt num = 0.obs;

  void changetext(){
    if (msg.value == "Hello World!"){
      msg.value = "Welcome to Flutter and Dart!";
    }
    else{
      msg.value = "Hello World!";
    }
  }

  void add(){
    if(num != 10)
    ++num;
  }

  void sub(){
    if(num!=0){
    --num;}
  }
}