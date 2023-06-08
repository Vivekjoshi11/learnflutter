import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  @override
  Widget build(BuildContext context) {
     const imageurl = "https://images.hindustantimes.com/auto/img/2022/04/10/1600x900/image.1624369648649_1649592750013_1649592755410.jpg";
  
    return  Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: const [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("vivek"), 
                accountEmail: Text("vj785099@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                ),
                )
                ),
                ListTile(
                  leading: Icon(
                    CupertinoIcons.home, color: Colors.white,
                    ),
                 title: Text(
                  "Home", 
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(CupertinoIcons.profile_circled,
                  color: Colors.white,
                  ),
                  title: Text("Profile",
                  textScaleFactor: 1.2,
                   style: TextStyle(
                    color: Colors.white
                   ),
                  ),

                ),
                ListTile(
                  leading: Icon(CupertinoIcons.mail,
                  color: Colors.white,
                  ),
                  title: Text("E-mail",
                  textScaleFactor: 1.2,
                   style: TextStyle(
                    color: Colors.white
                   ),
                  ),

                )
          ],
        ),
      ),
    );
  }
}