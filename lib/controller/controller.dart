import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class Controller extends GetxController{

  final id=TextEditingController().obs;
  final user=TextEditingController().obs;
  final email=TextEditingController().obs;
  final password=TextEditingController().obs;
  RxInt intID=0.obs;

  
  void submit(){
    intID.value=int.parse(id.value.text);
    log('ID: $intID');
    log('User: ${user.value.text}');
    log('Email: ${email.value.text}');
    log('Password: ${password.value.text}');

  }


}
