import 'package:flutter/material.dart';
import '../Animations/fadedanimation.dart';
import 'package:hangerstore_test/login/route.dart'as route;
class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var _formkey=GlobalKey<FormState>();
  bool _visible=true;
  final nameController=TextEditingController();
  final phoneController=TextEditingController();
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  final cpasswordController=TextEditingController();
  void _submit(){
    final isValid =_formkey.currentState!.validate();
    if(!isValid){
      return;
    }
    _formkey.currentState?.save();
    Navigator.pushNamed(context, route.hanger);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/whln.jpg'),
                          fit: BoxFit.fill
                      )
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: FadeAnimation(1.6, Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Center(
                            child: Text("Register", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                          ),
                        )),
                      )
                    ],
                  ),

                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(1.8, Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10)
                              )
                            ]
                        ),
                        child: Form(
                          key:_formkey,
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey.shade100))
                                ),
                                child: TextFormField(
                                  controller: nameController,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Name",
                                      hintStyle: TextStyle(color: Colors.black38)
                                  ),
                                  validator: (value){
                                    if(value!.isEmpty ||!RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                                      return "Enter Valid Name";
                                    }
                                    else{
                                      return null;
                                    }
                                  },
                                ),

                                ),

                              Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey.shade100))
                                ),
                                child: TextFormField(
                                  controller: phoneController,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Phone number",
                                      hintStyle: TextStyle(color: Colors.black38)
                                  ),
                                    validator: (value){
                                    if (value!.isEmpty) {
                                      return 'Enter valid number';
                                    }
                                    if (value.length <10||value.length>10) {
                                      return 'The number must be 10 digit';
                                    }
                                   else{
                                    return null;
                                  }
                                  },
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey.shade100))
                                ),
                                child: TextFormField(
                                  controller: emailController,
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Email",
                                      hintStyle: TextStyle(color: Colors.black38)
                                  ),
                                    validator: (value){
                                    if(value!.isEmpty ||!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)){
                                    return "Enter Valid Email";
                                    }
                                    else{
                                      return null;
                                    }
                                  }
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8.0),
                                child: TextFormField(
                                  controller: passwordController,
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText: _visible,
                                  decoration: InputDecoration(
                                    suffixIcon: GestureDetector(
                                      onTap: (){
                                        showPassword();
                                      },
                                      child: Icon(Icons.remove_red_eye_outlined,
                                      ),
                                    ),
                                      border: InputBorder.none,
                                      hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.black38)
                                  ),
                                    validator: (value){
                                      if (value!.isEmpty) {
                                        return 'Please Enter your password';
                                      }
                                      if (value.length <6) {
                                        return 'Must be more than 6 charater';
                                      }
                                      if (value.length <12) {
                                        return 'Must be more than 12 charater';
                                      }
                                      return null;
                                    }
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8.0),
                                child: TextFormField(
                                  controller: cpasswordController,
                                    keyboardType: TextInputType.visiblePassword,
                                    obscureText: _visible,
                                    decoration: InputDecoration(
                                        suffixIcon: GestureDetector(
                                          onTap: (){
                                            showPassword();
                                          },
                                          child: Icon(Icons.remove_red_eye_outlined,
                                          ),
                                        ),
                                        border: InputBorder.none,
                                        hintText: "Confirm Password",
                                        hintStyle: TextStyle(color: Colors.black38)
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return 'Confirm your Password';
                                      }
                                      if (passwordController.text ==
                                          cpasswordController.text) {
                                        return null;
                                      }
                                          else{
                                        return'Password Must match';
                                      }
                                    }
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                      SizedBox(height: 30,),
                      FadeAnimation(2, Container(
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: ()=>_submit(),
                          child: Text("Register", style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),),
                        ),
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors: [
                                  Colors.grey,
                                  Color.fromRGBO(255,220,198,195,),
                                  Colors.grey,
                                ]
                            )
                        ),

                      )),
                      SizedBox(height: 70,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Text("Already have an account?",style: TextStyle(color: Colors.black54),),
                          GestureDetector(
                            onTap: ()=>Navigator.pushNamed(context, route.loginPage),
                            child: Text("Login",style: TextStyle(color: Colors.brown),),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );

  }
  void showPassword(){
    setState(() {
      _visible=!_visible;
    });
  }
}