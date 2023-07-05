import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedCategory = 0;
  List<String> foods = ["Burgers", "Pizza", "Dessert", "Salad", "Kebab"];
  List<String> imgPaths=[
    "images/restaurant/one.jpg",
    "images/restaurant/two.jpg",
    "images/restaurant/three.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_basket))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Food Delivery',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30.spMin),
            ),
            SizedBox(
              height: 28.h,
            ),
            SizedBox(
              height: 50.h,
              width: double.infinity,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, item) => makeCategory(item: item),
                  separatorBuilder: (context, item) => SizedBox(
                        width: 15.w,
                      ),
                  itemCount: foods.length),
            ),
            SizedBox(
              height: 28.h,
            ),
            Text(
              "Free Delivery",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[700],
                  fontSize: 20.spMin),
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, item) => makeItem(imgPath: imgPaths[item]),
                  separatorBuilder: (context, item) => SizedBox(
                        width: 15.w,
                      ),
                  itemCount: imgPaths.length),
            )
          ],
        ),
      ),
    );
  }

  Widget makeCategory({required int item}) => GestureDetector(
        onTap: () {
          setState(() {
            selectedCategory = item;
          });
        },
        child: AspectRatio(
          aspectRatio: 2.2 / 1,
          child: Container(
            decoration: BoxDecoration(
                color: item == selectedCategory
                    ? Colors.yellow[700]
                    : Colors.grey[300],
                borderRadius: BorderRadius.circular(50)),
            child: Center(
              child: Text(
                foods[item],
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.spMin,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      );
  Widget makeItem({required String imgPath}) => Stack(
    children: [
      Container(
        height: 550,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image:  DecorationImage(
              image: AssetImage(imgPath),
              fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.3),
              ],
              begin: Alignment.bottomCenter,
              stops: const [.2, .9],
            ),
          ),
        ),
      ),
      Positioned.fill(
        child: Align(
          alignment: AlignmentDirectional.topEnd,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: const Icon(
                  Icons.favorite,
                  color: Colors.white,
                )),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Align(
          alignment: AlignmentDirectional.bottomStart,
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "\$ 13.00",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.spMin,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Vegetarian Pizza",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
