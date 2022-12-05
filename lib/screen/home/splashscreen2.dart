import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hangerstore_test/login/loginpage.dart';
import 'package:hangerstore_test/login/route.dart';
import 'package:hangerstore_test/screen/home/hanger.dart';
class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context)=>Hanger()
            )));
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body:Center(
        child: ListView(
            children:[ Column(
              children: [
                Container(
                  //width: MediaQuery.of(context).size.width,
                  color:Colors.white,
                  child: Image(
                    image: AssetImage('assets/images/itmini.gif'),
                  ),
                ),

                CircularProgressIndicator(

                  backgroundColor: Colors.black,
                  color: Colors.white,
                  strokeWidth: 5,


                )
              ],
            ),
            ]
        ),
      ),
    );
  }
}
