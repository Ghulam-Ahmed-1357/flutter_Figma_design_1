import 'package:flutter/material.dart';
import 'package:untitled1/model/model.dart';
import 'package:untitled1/view/search.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

// https://dribbble.com/shots/24088021-Connectify-Social-App
class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  bool is_mf = true;
  bool is_sp = false;
  List<Model> statusList = [
    Model(image: 'assets/images/prof2.png', title: 'Selena'),
    Model(image: 'assets/images/prof3.png', title: 'Clara'),
    Model(image: 'assets/images/prof4.png', title: 'Febian'),
    Model(image: 'assets/images/prof5.jfif', title: 'Gemi'),
    Model(image: 'assets/images/prof2.png', title: 'Gpt'),
  ];
  final PageController controller = PageController(initialPage: 0);
  int selectedIndex = 0;

  void onButtonTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    // controller.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Text(
            'Friendzy',
            style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
          ),
          actions: [
            IconButton(
              onPressed: () {
                print("object");
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page2()),
                  );
                });
              },
              icon: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1.5, color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(200),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Icon(Icons.notifications_none_sharp, size: 30),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            currentIndex: selectedIndex,
            onTap: onButtonTapped,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.white,

            items: [
              BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundColor:
                      selectedIndex == 0 ? Colors.blue : Colors.white,
                  child: Icon(
                    Icons.home,
                    color: selectedIndex == 0 ? Colors.white : Colors.grey,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundColor:
                      selectedIndex == 1 ? Colors.blue : Colors.white,
                  child: Icon(
                    Icons.explore_outlined,
                    color: selectedIndex == 1 ? Colors.white : Colors.grey,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundColor:
                      selectedIndex == 2 ? Colors.blue : Colors.white,
                  child: Icon(
                    Icons.add,
                    color: selectedIndex == 2 ? Colors.white : Colors.grey,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundColor:
                      selectedIndex == 3 ? Colors.blue : Colors.white,
                  child: Icon(
                    Icons.person_2_rounded,
                    color: selectedIndex == 3 ? Colors.white : Colors.grey,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page3()),
                      );
                    });
                  },
                  child: CircleAvatar(
                    backgroundColor:
                        selectedIndex == 4 ? Colors.blue : Colors.white,
                    child: Icon(
                      Icons.messenger,
                      color: selectedIndex == 4 ? Colors.white : Colors.grey,
                    ),
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              'assets/images/user_profile.png',
                              height: 70,
                              width: 70,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text('My Story'),
                          ),
                        ],
                      ),
                      Row(
                        children: List.generate(statusList.length, (index) {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 70,
                                  width: 67,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 3,
                                      color: Colors.blue,
                                    ),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: Image.asset(statusList[index].image),
                                  ),
                                ),
                              ),
                              Text(statusList[index].title),
                            ],
                          );
                        }),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 15),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  is_sp = false;
                                  is_mf = true;
                                });
                              },
                              child: Container(
                                height: 42,
                                decoration: BoxDecoration(
                                  color:
                                      is_mf
                                          ? Colors.white
                                          : Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8,
                                    horizontal: 30,
                                  ),
                                  child: Text(
                                    'Make Friends',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  is_sp = true;
                                  is_mf = false;
                                });
                              },
                              child: Container(
                                height: 42,
                                decoration: BoxDecoration(
                                  color:
                                      is_sp
                                          ? Colors.white
                                          : Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8,
                                    horizontal: 25,
                                  ),
                                  child: Text(
                                    'Search Partners',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child:
                          is_mf
                              ? Image.asset(
                                'assets/images/i1.png',
                                height:
                                    MediaQuery.of(context).size.height * 0.45,
                                width: double.infinity,
                                fit: BoxFit.fill,
                              )
                              : Image.asset(
                                'assets/images/image9.jpeg',
                                height:
                                    MediaQuery.of(context).size.height * 0.45,
                                width: double.infinity,
                                fit: BoxFit.fill,
                              ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white38,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 3, color: Colors.white54),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Image.asset(
                                  'assets/images/image1.jfif',
                                  height: 40,
                                  width: 40,
                                ),
                              ),
                              Text(
                                'Travel',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.25,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'If you could live anywhere\nin the world, where would\nyou pick',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.36,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  'assets/images/u1.png',
                                  fit: BoxFit.cover,
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Miranda Kehlani',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    'STUTTGART',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.11,
                        ),
                        child: BlurryContainer(
                          height: 200,
                          width: 70,
                          color: Colors.white24,
                          blur: 5,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                            topRight: Radius.circular(-40),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white38,
                                child: Icon(
                                  Icons.thumb_up,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white38,
                                child: Icon(
                                  Icons.messenger_outlined,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white38,
                                child: Icon(
                                  Icons.more_horiz,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child:
                          is_mf
                              ? Image.asset(
                                'assets/images/image7.jfif',
                                height:
                                    MediaQuery.of(context).size.height * 0.45,
                                width: double.infinity,
                                fit: BoxFit.fill,
                              )
                              : Image.asset(
                                'assets/images/image10.jpeg',
                                height:
                                    MediaQuery.of(context).size.height * 0.45,
                                width: double.infinity,
                                fit: BoxFit.fill,
                              ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        height: 50,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 3, color: Colors.white54),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: Container(
                                  color: Colors.transparent,
                                  child: Image.asset(
                                    'assets/images/image6.jfif',
                                    height: 40,
                                    width: 40,
                                  ),
                                ),
                              ),
                              Text(
                                'Football',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.25,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'If you like to play football\nor any other game you \ncan pick',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.36,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  'assets/images/image2.jfif',
                                  fit: BoxFit.cover,
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hejeal Damon',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    'SYAIOELL',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.11,
                        ),
                        child: BlurryContainer(
                          height: 200,
                          width: 70,
                          color: Colors.white24,
                          blur: 5,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                            topRight: Radius.circular(-40),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white38,
                                child: Icon(
                                  Icons.thumb_up,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white38,
                                child: Icon(
                                  Icons.messenger_outlined,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white38,
                                child: Icon(
                                  Icons.more_horiz,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
