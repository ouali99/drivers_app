import 'dart:async';
import 'package:flutter/material.dart';
import 'package:drivers_app/authentification/login_screen.dart';

class MySplashScreen extends StatefulWidget
{
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen>
{
  starTimer()
  {
    Timer(const Duration(seconds: 3), () async {
      //send user to main screen
      Navigator.push(context, MaterialPageRoute(builder: (e) => LoginScreen()));
    });
  }

  @override
  void initState()
  {
    super.initState();
    starTimer();
  }


  @override
  Widget build(BuildContext context)
  {
    return Material(
      child: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/logo1.png"),

              const SizedBox(height: 10,),

              const Text(
                  "Uber Taxi App",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  )
              )
            ],
          ),
        ),
      ),
    );
  }


}