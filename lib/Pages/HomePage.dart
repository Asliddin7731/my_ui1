import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
          colors: [
            Colors.black87,
            Colors.black54,
            Colors.black45,
          ]),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            Container(
              alignment: Alignment.topRight,
              margin: const EdgeInsets.all(30),
              child:  const Column(
                crossAxisAlignment:CrossAxisAlignment.end ,
                children: [
                  Text('Sign Up', style:  TextStyle(color: Colors.white, fontSize: 30),),
                  Text('Welcome',style:  TextStyle(color: Colors.white, fontSize: 17),),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(30),
                decoration: const BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.elliptical(45,55),topRight: Radius.elliptical(45,55))),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [BoxShadow(
                            color: Color.fromRGBO(171, 171, 171, 0.7),
                            blurRadius: 20,
                            offset: Offset(0,10)
                          )]
                        ),
                        child: Column(
                          children: [
                            //Full name
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey[200]!)),
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                    hintText: "Full name",
                                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                                    border: InputBorder.none
                                ),
                              ),
                            ),
                            //Email
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey[200]!)),
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                  hintText: 'Email',
                                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                                  border: InputBorder.none
                                ),
                              ),
                            ),
                            //Phone
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey[200]!)),
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                  hintText: 'Phone',
                                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                                  border: InputBorder.none
                                ),
                              ),
                            ),
                            //Password
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey[200]!)),
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                                  border: InputBorder.none
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),

                      //Sign in
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        width: double.infinity,
                        height: 48,
                        child: MaterialButton(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                          color: Colors.black45,
                          onPressed: (){},
                          child: const Text('Sign Up', style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),

                      //Sign Up with SNS
                      const Text('Sign Up width SNS', style: TextStyle(color: Colors.grey, fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          //Facebook
                          Expanded(
                            child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),color: Colors.blue),
                            height: 48,
                            child: const Text('Facebook', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10),),
                          ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),

                          //Google
                          Expanded(
                            child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),color: Colors.red),
                            height: 48,
                            child: const Text('Google', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10),),
                          ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),

                          //Apple
                          Expanded(
                            child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),color: Colors.black87),
                            height: 48,
                            child: const Text('Apple', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10),),
                          ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
