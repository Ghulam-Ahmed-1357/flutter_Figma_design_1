import 'package:flutter/material.dart';

import '../model/model1.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  List<Model1> myGridList = [
    Model1(
      image: 'assets/images/p31.jfif',
      matchPercent: 100,
      distance: 1.3,
      name: 'James',
      age: 20,
      nickName: 'HANOVER',
    ),
    Model1(
      image: 'assets/images/p32.jfif',
      matchPercent: 94,
      distance: 2,
      name: 'Eddie',
      age: 23,
      nickName: 'DORTMUND',
    ),
    Model1(
      image: 'assets/images/p33.jfif',
      matchPercent: 89,
      distance: 1.5,
      name: 'Brandon',
      age: 20,
      nickName: 'ALFRED',
    ),
    Model1(
      image: 'assets/images/p34.jfif',
      matchPercent: 80,
      distance: 2.5,
      name: 'Alfredo',
      age: 20,
      nickName: 'HANDEN',
    ),
    Model1(
      image: 'assets/images/p35.jfif',
      matchPercent: 80,
      distance: 1.3,
      name: 'James',
      age: 20,
      nickName: 'WOLF',
    ),
    Model1(
      image: 'assets/images/p36.jfif',
      matchPercent: 92,
      distance: 1.3,
      name: 'Eddie',
      age: 20,
      nickName: 'HANOVER',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Matches',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.blue),
                            borderRadius: BorderRadius.circular(200),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(200),
                            child: Stack(
                              children: [
                                Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSET7-hhlSFcFFA37UFyf0ff4pRf8priXXnDA&s',
                                  height: 80,
                                  width: 80,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Icon(
                                    Icons.favorite_sharp,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            text: 'Likes ',
                            children: [
                              TextSpan(
                                text: '32',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 3, color: Colors.blue),
                            borderRadius: BorderRadius.circular(200),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.5),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(200),
                              child: Stack(
                                children: [
                                  Image.network(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTgD14vQ6I-UBiHTcwxZYnpSfLFJ2fclwS2A&s',
                                    height: 80,
                                    width: 80,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Icon(
                                      Icons.messenger,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            text: 'Connect ',
                            children: [
                              TextSpan(
                                text: '15',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text.rich(
                  TextSpan(
                    text: 'Your Matches ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: '47',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: MediaQuery.of(context).size.height * 0.3,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 5),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                image: AssetImage(myGridList[0].image),
                                fit: BoxFit.fill,
                              ),
                            ),
                            width: MediaQuery.of(context).size.width * 0.45,
                            height: MediaQuery.of(context).size.height * 0.3,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                '${myGridList[0].matchPercent}% Match',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 120, left: 35),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                '${myGridList[0].distance}km away',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white54,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 160, left: 27),
                            child: Text(
                              '${myGridList[0].name}, ${myGridList[0].age}',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 190, left: 35),
                            child: Text(
                              '${myGridList[0].nickName}',style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: MediaQuery.of(context).size.height * 0.3,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 5),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                image: AssetImage(myGridList[0].image),
                                fit: BoxFit.fill,
                              ),
                            ),
                            width: MediaQuery.of(context).size.width * 0.45,
                            height: MediaQuery.of(context).size.height * 0.3,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                '${myGridList[0].matchPercent}% Match',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 120, left: 35),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                '${myGridList[0].distance}km away',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white54,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 160, left: 27),
                            child: Text(
                              '${myGridList[0].name}, ${myGridList[0].age}',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 190, left: 35),
                            child: Text(
                              '${myGridList[0].nickName}',style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: MediaQuery.of(context).size.height * 0.3,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 5),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                image: AssetImage(myGridList[0].image),
                                fit: BoxFit.fill,
                              ),
                            ),
                            width: MediaQuery.of(context).size.width * 0.45,
                            height: MediaQuery.of(context).size.height * 0.3,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                '${myGridList[0].matchPercent}% Match',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 120, left: 35),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                '${myGridList[0].distance}km away',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white54,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 160, left: 27),
                            child: Text(
                              '${myGridList[0].name}, ${myGridList[0].age}',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 190, left: 35),
                            child: Text(
                              '${myGridList[0].nickName}',style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: MediaQuery.of(context).size.height * 0.3,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 5),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                image: AssetImage(myGridList[0].image),
                                fit: BoxFit.fill,
                              ),
                            ),
                            width: MediaQuery.of(context).size.width * 0.45,
                            height: MediaQuery.of(context).size.height * 0.3,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                '${myGridList[0].matchPercent}% Match',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 120, left: 35),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                '${myGridList[0].distance}km away',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white54,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 160, left: 27),
                            child: Text(
                              '${myGridList[0].name}, ${myGridList[0].age}',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 190, left: 35),
                            child: Text(
                              '${myGridList[0].nickName}',style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: MediaQuery.of(context).size.height * 0.3,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 5),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                image: AssetImage(myGridList[0].image),
                                fit: BoxFit.fill,
                              ),
                            ),
                            width: MediaQuery.of(context).size.width * 0.45,
                            height: MediaQuery.of(context).size.height * 0.3,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                '${myGridList[0].matchPercent}% Match',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 120, left: 35),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                '${myGridList[0].distance}km away',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white54,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 160, left: 27),
                            child: Text(
                              '${myGridList[0].name}, ${myGridList[0].age}',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 190, left: 35),
                            child: Text(
                              '${myGridList[0].nickName}',style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: MediaQuery.of(context).size.height * 0.3,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue, width: 5),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                image: AssetImage(myGridList[0].image),
                                fit: BoxFit.fill,
                              ),
                            ),
                            width: MediaQuery.of(context).size.width * 0.45,
                            height: MediaQuery.of(context).size.height * 0.3,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                '${myGridList[0].matchPercent}% Match',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 120, left: 35),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                '${myGridList[0].distance}km away',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white54,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 160, left: 27),
                            child: Text(
                              '${myGridList[0].name}, ${myGridList[0].age}',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 190, left: 35),
                            child: Text(
                              '${myGridList[0].nickName}',style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // Expanded(
                //   child: GridView.builder(
                //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //       crossAxisCount: 2,
                //       mainAxisSpacing: 8,
                //       crossAxisSpacing: 8,
                //     ),
                //     scrollDirection: Axis.vertical,
                //     itemCount: myGridList.length,
                //     itemBuilder: (BuildContext context, int index) {
                //       return Container(
                //         decoration: BoxDecoration(
                //           border: Border.all(color: Colors.blue, width: 5),
                //         ),
                //         child: Stack(
                //           children: [
                //             Image.asset(
                //               myGridList[index].image,
                //               height: MediaQuery.of(context).size.height * 0.3,
                //               width: MediaQuery.of(context).size.width * 0.45,
                //             ),
                //           ],
                //         ),
                //       );
                //     },
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
