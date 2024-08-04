import 'package:barberbooking/pages/Login.dart';
import 'package:flutter/material.dart';
class Sign_up extends StatefulWidget {
  const Sign_up({super.key});

  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 30, top: 50),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color(0xFFB91635),
                    Color(0xff621d3c),
                    Color(0xFF311937)
                  ])),
              child: Text(
                "Create Your\nAccount",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 40,left: 30,right: 30),
              margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/4),
              height: MediaQuery.of(context).size.height,
              width:MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40))
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name",
                      style: TextStyle(

                          color: Color(0xFFB91635),
                          fontSize: 23,
                          fontWeight: FontWeight.w500),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Name",
                          prefixIcon: Icon(Icons.person_outline)
                      ),
                    ),
                    SizedBox(height: 30,),
                    Text(
                      "Gmail",
                      style: TextStyle(

                          color: Color(0xFFB91635),
                          fontSize: 23,
                          fontWeight: FontWeight.w500),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Gmail",
                          prefixIcon: Icon(Icons.mail_outline)
                      ),
                    ),
                    SizedBox(height: 30,),
                    Text(
                      "Password",
                      style: TextStyle(

                          color: Color(0xFFB91635),
                          fontSize: 23,
                          fontWeight: FontWeight.w500),
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Password",
                          prefixIcon: Icon(Icons.password_outlined)
                      ),
                    ),


                    SizedBox(height: 50,),
                    GestureDetector(
                      onTap: (){
                        // Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>Home()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          gradient: LinearGradient(colors: [
                            Color(0xFFB91635),
                            Color(0xff621d3c),
                            Color(0xFF311937)
                          ]),

                        ),
                        child: Center(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Already Have an account?",
                          style: TextStyle(
                              color:  Color(0xFF311937),
                              fontSize: 17,
                              fontWeight: FontWeight.w500),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>LogIn()));
                          },
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                color:  Color(0xff621d3c),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),

                  ],


                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
