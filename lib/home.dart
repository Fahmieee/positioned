import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double getSmallDiameter(BuildContext context) => MediaQuery.of(context).size.width * 2/3;
  double getBigDiametere(BuildContext context) => MediaQuery.of(context).size.width * 8/9;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: -getSmallDiameter(context) /3,
            top: -getSmallDiameter(context) / 3,
            child:
          Container(
            width: getSmallDiameter(context),
            height: getBigDiametere(context),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Color(0xffb226b2), Color(0xffff6da7)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              )
            ),
          ),
          ),

          Positioned(
            left: -getSmallDiameter(context) / 4,
            top: -getSmallDiameter(context) / 4,
            child:
            Container(
              child: Center(
                child:
                Text("Aplikasi Ku .. ", style: TextStyle(fontSize: 30, color: Colors.white),)
              ),
              width: getBigDiametere(context),
              height: getBigDiametere(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Color(0xffb226b2), Color(0xffff6da7)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                  )
              ),
            ),
          ),

          Positioned(
            left: -getBigDiametere(context) / 2,
            bottom: -getBigDiametere(context) / 2,
            child:
            Container(
              width: getBigDiametere(context),
              height: getBigDiametere(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Color(0xfff3e9e)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter
                  )
              ),
            ),
          ),
          
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.email, color: Color(0xffff4891),),
                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(
                            color: Color(0xffff4891)
                          )),
                          labelText: "Email: ",
                          labelStyle: TextStyle(color: Color(0xffff4891))
                        ),
                      ),

                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: Icon(Icons.vpn_key, color: Color(0xffff4891),),
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(
                                color: Color(0xffff4891)
                            )),
                            labelText: "Password : ",
                            labelStyle: TextStyle(color: Color(0xffff4891))
                        ),
                      ),
                    ],
                  ),
                ),
                
                Align(
                  alignment: Alignment.centerRight,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
                        child: Text("Forgot Password?", style: TextStyle(color: Color(0xffff4891), fontSize: 11),))
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                  child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 40,
                          child: Container(
                            child: Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.transparent,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                splashColor: Colors.amber,
                              onTap: (){},
                                child: Center(
                                  child: Text(
                                    "Sign In", style:
                                    TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                    colors: [Color(0xFFB226b2), Color(0xffff4891)],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter
                                )
                            ),
                          ),
                        ),

                        FloatingActionButton(
                          mini: true,
                          elevation: 0,
                            child: Image.network("https://cdn.iconscout.com/icon/free/png-256/facebook-circle-1868984-1583148.png"),
                            onPressed: (){}),
                        FloatingActionButton(
                            mini: true,
                            elevation: 0,
                            child: Image.network("https://cdn.iconscout.com/icon/free/png-256/facebook-circle-1868984-1583148.png"),
                            onPressed: (){})

                      ],
                    )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Dont Have An Account ?", style: TextStyle(fontSize: 11, color: Color(0xffff4891), fontWeight: FontWeight.w500)),
                    Text("Sign Up", style: TextStyle(fontSize: 11, color: Colors.grey, fontWeight: FontWeight.w500))
                  ],
                )
              ],
            ),
          )


        ],
      ),
    );
  }
}
