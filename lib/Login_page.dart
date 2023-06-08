// ignore_for_file: avoid_print, prefer_const_constructors, sort_child_properties_last, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:learnflutter/utils/routes.dart';
// import 'package:learnflutter/utils/routes.dart';
// import 'package:flutter/utils';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

     String name = "";
     bool changeButton = false;
     final _formKey = GlobalKey<FormState>();   // form key
    
    moveToHome(BuildContext context) async{
      if(_formKey.currentState!.validate()){
       setState(() {
            changeButton = true;
         });
            await Future.delayed(Duration(seconds:1));
             await Navigator.pushNamed(context, Myroutes.homeRoute);
                      setState(() {
                        changeButton = false;
                      });
    }
    }
  @override
  Widget build(BuildContext context) {
   
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Image.asset("lib/assets/images/loginimage.png",
              fit: BoxFit.cover,),
              ButtonTheme(child: const Text("login"),
              ),
              const SizedBox(height: 20.0),
               Text(
                "Welcome $name",
                
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                ),
                const SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  child: Column(
                    children:
                     [
                    TextFormField(
                     decoration: const InputDecoration(
                    hintText: "Enter Username",
                    labelText:"Username",
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                         return "please username can't be empty";
                      }
                      return null;
                    },
                  
                  ),
                  TextFormField(
                    obscureText: true,
                     decoration: const InputDecoration(
                    hintText: "Enter Password",
                    labelText:"Password",  
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                         return "please password can't be empty";
                      }
                      else if(value.length<6){
                        return " password length should be atleat 6";
                      }
                      return null;
                    },
                  ),
                  ],),
                ),
                const SizedBox(
                  height: 40.0
                  ),
                   InkWell(
                    onTap: () => moveToHome(context),                 
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton?50 : 150, // xyz ? truecond : falsecond
                      height: 50,
                      // color: Colors.deepPurple,
                      alignment: Alignment.center,
                      child: changeButton?Icon(Icons.done, color:Colors.white): Text("Login",
                      style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize:18 ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(changeButton?50: 8),
                      ),
                      
                                   ),
                   ),
            ],
          
          ),
        ),
      ),
    );
    
    
  }
}