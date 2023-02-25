import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("lib/assets/images/loginimage.png",
          fit: BoxFit.cover,),
          ButtonTheme(child: const Text("login"),
          ),
          const SizedBox(height: 20.0),
          const Text(
            "Welcome",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            ),
            const SizedBox(height: 20.0),
            TextFormField(
               decoration: const InputDecoration(
              hintText: "Enter Username",
              labelText:"Username",  
              ),
            ),
            TextFormField(
              obscureText: true,
               decoration: const InputDecoration(
              hintText: "Enter Password",
              labelText:"Password",  
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
             child: const Text(
              "Login",
              // style: TextButton.styleFrom(
              //   backgroundColor: Colors.blue,
              // )
              ),
             onPressed: (){
              print("login")
             },
            )
        ],
      
      ),
    );
    
  }
}