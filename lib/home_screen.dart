import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:lgoin_ui/main_screen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void createAccount(String e,String p) async{
    http.Response response = await http.post(
      Uri.parse('https://reqres.in/api/login'),
      body: {
        'email' : e,
        'password' : p
      }
    );
    if(response.statusCode == 200){
      Navigator.push(context, MaterialPageRoute(builder: (context) => const MainScreen()));
    }
    else{
      print('not ok');
    }
  }
  static bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
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
                    controller: passwordController,
                    obscureText: !isVisible,
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
                            isVisible = !isVisible;
                            setState(() {});
                          },
                          icon: Icon(
                            isVisible
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
                InkWell(
                  onTap: (){
                    createAccount(emailController.text.toString(),
                        passwordController.text.toString());
                  },
                  child: Container(
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
                              fontSize: 20),
                        )),
                  ),
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
    );
  }
}
