import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uipractice/mentalHealth/widgets/emotion_face.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(
          children: [
            //greetings
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 25),
              child: Row(
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
            ),
            SizedBox(
              height: 25.h,
            ),
            //search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
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
            ),
            SizedBox(
              height: 28.h,
            ),
            //how do you feel layout
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      EmotionFace(
                        emotionFace: '😔',
                        emotionText: 'Badly',
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      EmotionFace(
                        emotionFace: '😊',
                        emotionText: 'Fine',
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      EmotionFace(
                        emotionFace: '😁',
                        emotionText: 'Well',
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      EmotionFace(
                        emotionFace: '😃',
                        emotionText: 'Excellent',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //bottom sheet
            SizedBox(
              height: 25.h,
            ),
            //bottom sheet
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: Colors.grey[100],
                ),
                child: Column(
                  children: [
                    //first component in the bottom sheet
                    Padding(
                      padding: const EdgeInsets.all(35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercises',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18.spMin),
                          ),
                          const Icon(Icons.more_horiz)
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        children: [
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: ListTile(
                                      leading: Container(
                                          decoration:  BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(10)),
                                          child: Padding(
                                            padding:  EdgeInsets.all(8.0.w),
                                            child: const Icon(Icons.favorite,color: Colors.white,),
                                          ),
                                      ),
                                      title: Text("Speaking Skills",style: TextStyle(
                                        fontWeight: FontWeight.bold
                                      ),),
                                      subtitle: Text("16 exercises"),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0.w),
                                    child: const Icon(Icons.more_horiz),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home")
        ],
      ),
    );
  }
}
