import 'package:flutter/material.dart';
import './widgets.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[900],
      body:SafeArea(child:
      Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.orange[900],
                  Colors.orange[800],
                  Colors.orange[400]
                ])
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 70,),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ( Text("Login", style: simpleText(Colors.white, 50))),
                  SizedBox(height: 10,),
                  Text("Welcome to back", style: simpleText(Colors.white, 18)),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Expanded(child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 60,),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [BoxShadow(
                                color: Color.fromRGBO(225, 95, 27, .3),
                                blurRadius: 20,
                                offset: Offset(0, 10)
                            )]
                        ),
                        child: Column(
                          children: <Widget>[
                            Form(
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                    ),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          hintText: "Email",
                                          hintStyle: TextStyle(color: Colors.grey),
                                          border: InputBorder.none
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                    ),

                                    child: TextFormField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          hintText: "Password",
                                          hintStyle: TextStyle(color: Colors.grey),
                                          border: InputBorder.none
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 40,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Forgot Password", style: TextStyle(color: Colors.grey),),
                      ),
                      SizedBox(height: 40,),
                      GestureDetector(
                        child: Container(
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.orange[900]
                          ),
                          child: Center(child: Text("Login",style: TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold),)),
                        ),
                      ),
                      SizedBox(height: 80,),
                      Text("Continue with", style: TextStyle(color: Colors.grey, fontSize: 16),),
                      SizedBox(height: 30,),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue[900],
                              ),
                              child: Center(child: Text("Facebook", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                            ),
                          ),
                          SizedBox(width: 30,),
                          Expanded(
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [BoxShadow(
                                      color: Color.fromRGBO(225, 95, 12, .3),
                                      blurRadius: 0,
                                      offset: Offset(0,1)
                                  )]
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("G", style: googleFont(Colors.blue)),
                                  Text("o", style: googleFont(Colors.red)),
                                  Text("o", style: googleFont(Colors.yellow)),
                                  Text("g", style: googleFont(Colors.blue)),
                                  Text("l", style: googleFont(Colors.green)),
                                  Text("e", style: googleFont(Colors.red)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Don't have an account? ",style: simpleText(Colors.black, 16)),
                          Text("Sign Up", style: TextStyle(color: Colors.red,decoration: TextDecoration.underline, fontSize: 16),)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      )),
    );
  }
}
