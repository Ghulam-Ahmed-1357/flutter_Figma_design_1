import 'package:flutter/material.dart';
import 'package:untitled1/view/home.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Container(
                  child: Image.network(
                    'https://th.bing.com/th/id/OIP.IZbotS_lEAh-V9QHwOhPTAHaFQ?w=235&h=180&c=7&r=0&o=5&pid=1.7',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Text(
                  'Let`s meeting new people around you',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                // child: ElevatedButton.icon(onPressed: (){}, label: Text('Login with Phone',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),), icon: CircleAvatar(backgroundColor: Colors.white,child: Icon(Icons.phone_in_talk,color: Colors.blue,)),style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, minimumSize: Size.fromHeight(70)),),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: Size.fromHeight(70),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(Icons.phone_in_talk, color: Colors.blue),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          'Login with Phone',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                // child: ElevatedButton.icon(onPressed: (){}, label: Text('Login with Phone',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),), icon: CircleAvatar(backgroundColor: Colors.white,child: Icon(Icons.phone_in_talk,color: Colors.blue,)),style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, minimumSize: Size.fromHeight(70)),),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade100,
                    minimumSize: Size.fromHeight(70),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.network(
                          'https://th.bing.com/th/id/OIP.EhTMbGiYfYzQnWLgjZaoJAHaHa?w=198&h=198&c=7&r=0&o=5&pid=1.7',
                          height: 30,
                          width: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          'Login with Phone',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page2()),
                      );
                    });
                  },
                  child: Text.rich(
                    TextSpan(
                      text: 'Don`t have an account? ',
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                      children: [
                        TextSpan(
                          text: 'Sign Up',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50,)
            ],
          ),
        ),
      ),
    );
  }
}
