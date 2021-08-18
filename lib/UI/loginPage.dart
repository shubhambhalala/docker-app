import 'dart:ui';

import 'package:docker/UI/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var email;
    var password;
    launchURL(String url) {
      launch(url);
    }

    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/Login': (context) => LoginPage(),
        '/Dashboard': (context) => Dashboard(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.blue,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              alignment: Alignment.center,
              height: height,
              width: width,
              child: Column(
                children: [
                  Container(
                    padding:
                        EdgeInsets.only(top: height / 15, bottom: height / 15),
                    child: Image(
                      image: AssetImage('assets/docker_login.png'),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 10,
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(width / 5),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                              top: height / 30,
                            ),
                            child: Text(
                              "LOGIN",
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: height / 20,
                                shadows: [
                                  Shadow(
                                    color: Colors.black,
                                    offset: Offset.zero,
                                    blurRadius: 2.5,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              left: width / 10,
                              right: width / 10,
                              top: height / 30,
                              bottom: height / 30,
                            ),
                            child: TextFormField(
                              onChanged: (value) => {
                                email = value,
                              },
                              autocorrect: false,
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.email,
                                ),
                                hintText: "Email",
                                hintStyle: TextStyle(
                                  fontSize: height / 45,
                                  fontWeight: FontWeight.bold,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: width / 10,
                                right: width / 10,
                                bottom: height / 50),
                            child: TextFormField(
                              onChanged: (value) => {
                                password = value,
                              },
                              obscureText: true,
                              autocorrect: false,
                              decoration: InputDecoration(
                                icon: Icon(
                                  Icons.password,
                                ),
                                hintText: "Password",
                                hintStyle: TextStyle(
                                  fontSize: height / 45,
                                  fontWeight: FontWeight.bold,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: height / 40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () {
                                    print("Register");
                                  },
                                  child: Text(
                                    "Register",
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontWeight: FontWeight.bold,
                                        shadows: [
                                          Shadow(
                                            color: Colors.black,
                                            offset: Offset.zero,
                                            blurRadius: 1,
                                          )
                                        ]),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    print("Forgot Password");
                                  },
                                  child: Text(
                                    "Forgot Password?",
                                    style: TextStyle(
                                      color: Colors.blueAccent,
                                      shadows: [
                                        Shadow(
                                          color: Colors.black,
                                          offset: Offset.zero,
                                          blurRadius: 1,
                                        )
                                      ],
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: height / 50),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(width / 3, height / 18),
                                shadowColor: Colors.black,
                                elevation: 5,
                              ),
                              onPressed: () => {
                                print(email),
                                print(password),
                                Navigator.pushReplacementNamed(
                                    context, '/Dashboard')
                              },
                              child: Text(
                                "SUBMIT",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                      Shadow(
                                        color: Colors.black,
                                        offset: Offset.zero,
                                        blurRadius: 2,
                                      )
                                    ]),
                              ),
                            ),
                          ),
                          Container(
                            width: width,
                            color: Colors.blue,
                            alignment: Alignment.center,
                            child: Text(
                              "Developers",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black,
                                      offset: Offset.zero,
                                      blurRadius: 1.5,
                                    )
                                  ]),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              top: height / 45,
                              left: width / 15,
                              right: width / 15,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {
                                    print("ShubhamBhalala");
                                    launchURL(
                                        "https://www.linkedin.com/in/shubhambhalala/");
                                  },
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            "https://media-exp1.licdn.com/dms/image/C5603AQHwUy7zOO8TCg/profile-displayphoto-shrink_400_400/0/1589612490229?e=1629936000&v=beta&t=ooGa3qGAZsWWPKGRn-WJvZefFLKFuqVE_-PCXlxb0PI",
                                          ),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    print("HarshModi");
                                    launchURL(
                                        "https://www.linkedin.com/in/harshkumar-modi-50a676158/");
                                  },
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            "https://media-exp1.licdn.com/dms/image/C4E03AQHPMK2W2G1aXA/profile-displayphoto-shrink_800_800/0/1595086729871?e=1629936000&v=beta&t=30ZHt_AZmlAqf54f2XvPcVnfuEF-pAZ5wgp1OmJSCqA",
                                          ),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    print("ShashwatMisra");
                                    launchURL(
                                        "https://www.linkedin.com/in/shashwat-misra-07802814b/");
                                  },
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            "https://media-exp1.licdn.com/dms/image/C4E03AQHuYt1v3NR9BA/profile-displayphoto-shrink_800_800/0/1624610062573?e=1629936000&v=beta&t=bsnN_mBGZhNTcXdjSuO67TJZ_Bqo1-mTR4LuHCr7lRc",
                                          ),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    print("TirthPatel");
                                    launchURL(
                                        "https://www.linkedin.com/in/tirupatel/");
                                  },
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            "https://media-exp1.licdn.com/dms/image/C4D03AQFyWtH-I6azog/profile-displayphoto-shrink_800_800/0/1618966115562?e=1629936000&v=beta&t=UimycJPEpfn2U5lGjPSSu8218JLsH9Co_LFY24vBg_Q",
                                          ),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    print("ShashwatGaur");
                                    launchURL(
                                        "https://www.linkedin.com/in/shashwat-gaur-a0060516b/");
                                  },
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                            "https://media-exp1.licdn.com/dms/image/C5603AQHxBaqrwPkGnw/profile-displayphoto-shrink_800_800/0/1624649208320?e=1629936000&v=beta&t=l5Sktw7flsr1C8cpwKpuBPLHRDkTK7upJONdGuelmP4",
                                          ),
                                          fit: BoxFit.fill),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
