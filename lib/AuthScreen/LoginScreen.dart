import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:smartchallange/ApiService/AuthService.dart';
import 'package:smartchallange/ModelClasse/AuthModel.dart';

import 'package:smartchallange/Widget/my_text_field.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});
  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  // getdata()async{
  //   final authService = AuthService();
  //   final AuthModel? authModel = await authService.authenticateUser('demo@barashada.com','demo123');
  //   print(authModel!.data!.user!.firstName);
  // }
  final authService = AuthService();
  late final AuthModel? authModel;
  // = await authService.authenticateUser('demo@barashada.com','demo123');
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    // getdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/catdogimage.png',
                width: 200,
                height: 200,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Log In to your Account',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextField(
                prefixIcon: IconButton(
                  icon: Icon(
                    Icons.email_outlined,
                    color: Colors.blue,
                  ),
                  onPressed: () {},
                ),
                controller: email,
                label: 'Email',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 15,
              ),
              MyTextField(
                prefixIcon: IconButton(
                  icon: Icon(
                    Icons.lock_outlined,
                    color: Colors.blue,
                  ),
                  onPressed: () {},
                ),
                controller: password,
                label: 'Password',
                obsecureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  if (loginValidation()) {
                    authService.authenticateUser(email.text, password.text);
                    // controller.login(email.text,password.text);
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(0),
                  ),
                  height: 40,
                  width: double.infinity,
                  child: const Center(
                      child: Text(
                    'Log In',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    // Get.to(ForgotPasswordScreen());
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool loginValidation() {
    if (email.text.trim().length == 0) {
      Fluttertoast.showToast(msg: 'Email is required');

      return false;
    }
    if (password.text.trim().length == 0) {
      Fluttertoast.showToast(msg: 'Password is required');
      return false;
    }
    // else if
    // (!GetUtils.isEmail(name.text)){
    //   Fluttertoast.showToast(msg: 'Email format is not correct');
    //   return false;
    // }
    else
      return true;
  }
}
