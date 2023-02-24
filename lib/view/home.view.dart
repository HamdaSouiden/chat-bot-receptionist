import 'package:chat_res/helper/main.color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/auth_view_model.dart';

class HomeView extends GetWidget<AuthViewModel>{
  HomeView({super.key});
  final AuthViewModel authViewController = Get.find<AuthViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Atlantis"),
        centerTitle: true,
        backgroundColor: MainColor.mainColor,
      ),
      drawer: Drawer(
          child: ListView(children:[
        DrawerHeader(
          child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color.fromARGB(255, 101, 3, 118), Color.fromARGB(255, 217, 0, 255)]))),
        ),
        ListTile(
          leading: const Icon(Icons.exit_to_app_sharp),
          iconColor: Colors.black,
          title: const Text('Exit', 
          style: TextStyle(
            fontSize: 16,
          ),
          ),
          onTap: () async {
            await controller.signOut();
          }, 
        ),
      ])),
    );
  }
}
