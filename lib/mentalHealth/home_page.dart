import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              //greetings
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi,Jared",
                        style: TextStyle(
                            fontSize: 24.spMin,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "23 jan,2021",
                        style: TextStyle(color: Colors.blue[200]),
                      )
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.blue[600]),
                    child: Padding(
                      padding: EdgeInsets.all(8.0.w),
                      child: const Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              //search bar
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(12)),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search",
                      contentPadding:
                          const EdgeInsets.only(right: 15, top: 20, bottom: 20),
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Icon(
                          Icons.search_rounded,
                          color: Colors.white,
                          size: 24.spMin,
                        ),
                      ),
                      hintStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      )),
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              //how do you feel layout
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.spMin,
                        ),
                      ),
                      const Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 28.h,
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.blue[600]
                        ),
                          child:  Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                                '😀',
                              style: TextStyle(fontSize: 20.spMin),
                            ),
                          )
                      ),
                      SizedBox(height: 10.h,),
                      const Text(
                        "badly",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
                
              )
            ],
          ),
        ),
      ),
    );
  }
}
