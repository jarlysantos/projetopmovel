/*import 'package:flutter/material.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  @override
  void initState(){
    super.initState();
    checkUserLogin();


  }

  checkUserLogin() async{
    bool status = await SharedPrefs().getUserStatus();
    await Future.delayed(Duration(seconds: 3));
    if(status){
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder:(context){
          return HomePage();
        },
      ));
    }

  }*/

