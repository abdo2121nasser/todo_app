import 'package:flutter/material.dart';

import '../core/block/Contaner_task.dart';
import '../core/block/drower.dart';
import '../core/block/general_button_block.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.purple,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("images/background.jpg"),
            ),
            Container(
              child: Text(
                "your Name",
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            buttomdrower(
              Iconn: Icons.account_circle,
              lapil: "Profile",
            ),
            Center(
              child: buttomdrower(
                Iconn: Icons.password,
                lapil: "Change Password",
              ),
            ),
            buttomdrower(
              Iconn: Icons.login,
              lapil: "Logout",
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("To Do App"),
        actions: [
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Status",
                            style: TextStyle(color: Colors.black, fontSize: 30),
                          )
                          ,
                          GeneralButton(function: () {}, lable: "Apply Filter", width: double.maxFinite,hight: 50),
                        ],
                      );
                    });
              },
              icon: Icon(Icons.list)),
        const SizedBox(
            width: 20,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => TaskContaner(),
        itemCount: 3,
      ),
    );
  }
}
