import 'package:barberbooking/pages/Booking.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff412b2b),
      body: Container(
        margin: EdgeInsets.only(top: 40,left: 20,right: 20),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("Hello,",style: TextStyle(
                         color: Colors.white,
                         fontSize: 24,
                         fontWeight: FontWeight.w500
                       ),),
                       Text("Ishan Charkhawala",style: TextStyle(
                           color: Colors.white,
                           fontSize: 24,
                           fontWeight: FontWeight.bold
                       ),)
                     ],
                   ),

                   ClipRRect(
                       borderRadius: BorderRadius.circular(30),
                       child: Image.asset("Images/boy.jpg",height: 60,width: 60,fit: BoxFit.cover,))

                 ],
               ),
            SizedBox(
              height: 20,
            ),
            Divider(color: Colors.white30,),
            SizedBox(
              height: 20,
            ),
            Text("Services",style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: GestureDetector(
                    onTap: ()
                    {
                      Navigator.push(context,MaterialPageRoute (builder: (_)=>Booking(service: "Classic Shaving",)));
                    },
                    child: Container(
                      padding:EdgeInsets.symmetric(horizontal: 10) ,
                      height: 150,
                        decoration: BoxDecoration(
                          color: Color(0xFFe29452),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("Images/shaving.png",height: 80,width: 80,fit: BoxFit.cover),
                            SizedBox(height: 10,),
                            Text("Classic Shaving",style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: GestureDetector(
                    onTap: ()
                    {
                      Navigator.push(context,MaterialPageRoute (builder: (_)=>Booking(service: "Hair Washing",)));
                    },
                    child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                            color: Color(0xFFe29452),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("Images/hair.png",height: 80,width: 80,fit: BoxFit.cover,),
                           SizedBox(height: 10,),
                            Text("Hair Washing",style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),),
                          ],
                        )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: GestureDetector(
                    onTap: ()
                    {
                      Navigator.push(context,MaterialPageRoute (builder: (_)=>Booking(service: "Beard Trimming",)));
                    },
                    child: Container(
                        padding:EdgeInsets.symmetric(horizontal: 10) ,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Color(0xFFe29452),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("Images/beard.png",height: 80,width: 80,fit: BoxFit.cover),
                            SizedBox(height: 10,),
                            Text("Beard Trimming",style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: GestureDetector(
                    onTap: ()
                    {
                      Navigator.push(context,MaterialPageRoute (builder: (_)=>Booking(service: "Hair cutting",)));
                    },
                    child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                            color: Color(0xFFe29452),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("Images/cutting.png",height: 80,width: 80,fit: BoxFit.cover,),
                            SizedBox(height: 10,),
                            Text("Hair cutting",style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),),
                          ],
                        )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: GestureDetector(
                    onTap: ()
                    {
                      Navigator.push(context,MaterialPageRoute (builder: (_)=>Booking(service: "Kids Hair cutting",)));
                    },
                    child: Container(
                        padding:EdgeInsets.symmetric(horizontal: 10) ,
                        height: 150,
                        decoration: BoxDecoration(
                            color: Color(0xFFe29452),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("Images/kids.png",height: 80,width: 80,fit: BoxFit.cover),
                            SizedBox(height: 10,),
                            Text("Kids Hair cutting",style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: GestureDetector(
                    onTap: ()
                    {
                      Navigator.push(context,MaterialPageRoute (builder: (_)=>Booking(service: "facials",)));
                    },
                    child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                            color: Color(0xFFe29452),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("Images/facials.png",height: 80,width: 80,fit: BoxFit.cover,),
                            SizedBox(height: 10,),
                            Text("facials",style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),),
                          ],
                        )),
                  ),
                ),
              ],
            ),
          ],
        ) ,
      ),
    );
  }
}
