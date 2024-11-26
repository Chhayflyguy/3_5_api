import 'package:api/fetch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'controller/controller.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final formkey = GlobalKey<FormState>();
  final controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                _header(),
                SizedBox(
                  height: 20,
                ),
                _fieldID(),
                SizedBox(
                  height: 20,
                ),
                _fieldUser(),
                SizedBox(
                  height: 20,
                ),
                _fieldEmail(),
                SizedBox(
                  height: 20,
                ),
                _fieldPassword(),
                SizedBox(
                  height: 20,
                ),
                _buttonSubmit(),
                _getData(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _header() {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(18),
      ),
      child: const Text(
        'Form',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          decorationColor: Colors.white,
        ),
      ),
    );
  }

  Widget _fieldID() {
    return TextFormField(
      inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))],
      controller: controller.id.value,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(
            color: Colors.orange,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(
            color: Colors.blue,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(
            color: Colors.blue,
          ),
        ),
        labelText: 'Enter your ID',
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'ID is required';
        }
        return null;
      },
    );
  }

  Widget _fieldUser() {
    return TextFormField(
      controller: controller.user.value,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(
            color: Colors.orange,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(
            color: Colors.blue,
          ),
        ),
        labelText: 'Enter your User',
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'User is required';
        }
        return null;
      },
    );
  }

  Widget _fieldEmail() {
    return TextFormField(
      controller: controller.email.value,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(
            color: Colors.orange,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(
            color: Colors.blue,
          ),
        ),
        labelText: 'Enter your Email',
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Email is required';
        }
        return null;
      },
    );
  }

  Widget _fieldPassword() {
    return TextFormField(
      controller: controller.password.value,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(
            color: Colors.orange,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: const BorderSide(
            color: Colors.blue,
          ),
        ),
        labelText: 'Enter your Password',
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Password is required';
        }
        return null;
      },
    );
  }

  Widget _buttonSubmit() {
    return CupertinoButton(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(18),
      child: const Text('Submit'),
      onPressed: () {
        if (formkey.currentState!.validate()) {
          controller.submit();
        }
      },
    );
  }

  Widget _getData() {
    return TextButton(
        onPressed: () {
          Get.to(() =>  Fetch());
        },
        child: const Text(
          'Click to Fetch Data',
          style: TextStyle(
            color: Colors.grey,
            decoration: TextDecoration.underline,
            decorationColor: Colors.grey,
          ),
        ));
  }
}
