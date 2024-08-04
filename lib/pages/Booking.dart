import 'dart:math';

import 'package:flutter/material.dart';

class Booking extends StatefulWidget {
  String service;
  Booking({super.key, required this.service});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  DateTime _selectDate = DateTime.now();
  Future<void> _selectDateFun(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        firstDate: DateTime(2024),
        lastDate: DateTime(2025),
        initialDate: _selectDate);
    if (picked != null && picked != _selectDate) {
      setState(() {
        _selectDate = picked;
      });
    }
  }
  TimeOfDay _selectedTime=TimeOfDay.now();
  Future<void> _selectTimefun(BuildContext context) async
  {
    final TimeOfDay? picked=await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if(picked != null && picked != _selectedTime)
      {
        setState(() {
          _selectedTime=picked;
        });

      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2b1615),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Let,s The\nJourney Begin",
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 28,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "Images/discount.png",
                  fit: BoxFit.cover,
                )),
            SizedBox(
              height: 20,
            ),
            Text(
              widget.service,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xFFb4817e),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Text(
                    "Set a Date",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {
                            _selectDateFun(context);
                          },
                          child: Icon(
                            Icons.calendar_month,
                            color: Colors.white,
                            size: 30,
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "${_selectDate.day}/${_selectDate.month}/${_selectDate.year}",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xFFb4817e),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Text(
                    "Set a Time",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {
                            _selectTimefun(context);
                          },
                          child: Icon(
                            Icons.alarm,
                            color: Colors.white,
                            size: 30,
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "${_selectedTime.format(context)}",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: (){
                // Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>Home()));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                decoration: BoxDecoration(
                    color: Color(0xFFfe8f33),
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Center(
                  child: Text(
                    "BOOK NOW",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
