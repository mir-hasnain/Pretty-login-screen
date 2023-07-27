import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static bool visib = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('images/logo.png'),
                          height: 60,
                          width: 60,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'MAINTAINANCE',
                              style: TextStyle(fontSize: 22),
                            ),
                            Text('BOX',
                                style: TextStyle(
                                    color: Colors.orange, fontSize: 22),
                                textAlign: TextAlign.start)
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Center(
                      child: Text('Login',
                          style: TextStyle(
                              fontFamily: 'Rubik Medium',
                              fontSize: 24,
                              color: Colors.brown)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Center(
                      child: Text(
                          'hire us to well maintain your app \n        and utilize full resources',
                          style: TextStyle(
                              fontFamily: 'Rubik Regular',
                              fontSize: 16,
                              color: Colors.brown)),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 100),
                      child: TextFormField(
                        cursorColor: const Color.fromARGB(255, 232, 126, 56),
                        decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle:
                                const TextStyle(fontFamily: 'Rubik Medium'),
                            fillColor: const Color.fromARGB(255, 230, 230, 230),
                            filled: true,
                            prefixIcon: const Icon(
                              Icons.email_outlined,
                              color: Color.fromARGB(255, 232, 126, 56),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 232, 126, 56),
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 230, 230, 230)),
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 15, bottom: 10),
                      child: TextFormField(
                        obscureText: !visib,
                        keyboardType: TextInputType.number,
                        cursorColor: const Color.fromARGB(255, 232, 126, 56),
                        decoration: InputDecoration(
                          fillColor: const Color.fromARGB(255, 230, 230, 230),
                          filled: true,
                          hintText: 'Password',
                          hintStyle: const TextStyle(
                            fontFamily: 'Rubik Medium',
                          ),
                          prefixIcon: const Icon(
                            Icons.lock_open,
                            color: Color.fromARGB(255, 232, 126, 56),
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {
                                visib = !visib;
                                setState(() {});
                              },
                              icon: Icon(
                                visib
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility,
                                color: const Color.fromARGB(255, 232, 126, 56),
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 230, 230, 230))),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 232, 126, 56),
                              )),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                          left: 250, top: 8, bottom: 100, right: 20),
                      child: Text(
                        'Forgot Password?',
                        style:
                            TextStyle(color: Color.fromARGB(255, 21, 85, 222)),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 232, 126, 56),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Center(
                          child: Text(
                        'Log in',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Rubik Medium',
                            fontSize: 18),
                      )),
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Dont have an account?',
                          style: TextStyle(fontFamily: 'Rubik Medium'),
                        ),
                        Text(
                          'Sign up here',
                          style: TextStyle(
                              color: Color.fromARGB(255, 21, 85, 222),
                              fontFamily: 'Rubik Regular'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
