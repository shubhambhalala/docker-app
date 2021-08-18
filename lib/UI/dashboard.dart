import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var dropdownValue = 'Image List';
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.black87],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: ListView(
          children: [
            Container(
              //alignment: Alignment.center,
              height: height * .06,
              //width: MediaQuery.of(context).size.width,
              //padding: EdgeInsets.only(top: height * 0.01),
              child: Card(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Containers on Web",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    DropdownButton(
                      value: dropdownValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: <String>[
                        'Image List',
                        'ubuntu14.04',
                        'kali-nmap-metasploit'
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: width * 0.05,
                right: width * 0.05,
                top: height * 0.01,
              ),
              child: TextFormField(
                onChanged: (value) {
                  print(value);
                },
                autocorrect: false,
                decoration: InputDecoration(
                  hintText: "Image Name",
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white70,
                  enabledBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(width * 0.1)),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(width * 0.1)),
                    borderSide: BorderSide(color: Colors.black, width: 3),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: width * 0.05,
                right: width * 0.05,
                top: height * 0.01,
              ),
              child: TextFormField(
                onChanged: (value) {
                  print(value);
                },
                autocorrect: false,
                decoration: InputDecoration(
                  hintText: "Container Name",
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white70,
                  enabledBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(width * 0.1)),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(width * 0.1)),
                    borderSide: BorderSide(color: Colors.black, width: 3),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: width * 0.05,
                right: width * 0.05,
                top: height * 0.01,
              ),
              child: TextFormField(
                onChanged: (value) {
                  print(value);
                },
                autocorrect: false,
                decoration: InputDecoration(
                  hintText: "Exposed To (Eg:8888)",
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white70,
                  enabledBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(width * 0.1)),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(width * 0.1)),
                    borderSide: BorderSide(color: Colors.black, width: 3),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: width * 0.05,
                right: width * 0.05,
                top: height * 0.01,
              ),
              child: TextFormField(
                onChanged: (value) {
                  print(value);
                },
                autocorrect: false,
                decoration: InputDecoration(
                  hintText: "Exposed From (Eg:80)",
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white70,
                  enabledBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(width * 0.1)),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(width * 0.1)),
                    borderSide: BorderSide(color: Colors.black, width: 3),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: width * 0.05,
                right: width * 0.05,
                top: height * 0.01,
              ),
              child: TextFormField(
                onChanged: (value) {
                  print(value);
                },
                autocorrect: false,
                decoration: InputDecoration(
                  hintText: "Volume To (Eg: /root)",
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white70,
                  enabledBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(width * 0.1)),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(width * 0.1)),
                    borderSide: BorderSide(color: Colors.black, width: 3),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: width * 0.05,
                right: width * 0.05,
                top: height * 0.01,
              ),
              child: TextFormField(
                onChanged: (value) {
                  print(value);
                },
                autocorrect: false,
                decoration: InputDecoration(
                  hintText: "Volume From (Eg: /home/user/docker",
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white70,
                  enabledBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(width * 0.1)),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(width * 0.1)),
                    borderSide: BorderSide(color: Colors.black, width: 3),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: width * 0.05,
                right: width * 0.05,
                top: height * 0.01,
              ),
              child: TextFormField(
                onChanged: (value) {
                  print(value);
                },
                autocorrect: false,
                decoration: InputDecoration(
                  hintText: "Network",
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white70,
                  enabledBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(width * 0.1)),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.all(Radius.circular(width * 0.1)),
                    borderSide: BorderSide(color: Colors.black, width: 3),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: width * 0.2,
                right: width * 0.2,
                top: height * 0.01,
              ),
              child: ElevatedButton(
                onPressed: () {
                  print("Button");
                  final snackBar = SnackBar(
                    content: Text(
                        "https://13.233.190.68:4200\nuser:root1\npassword:toor"),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Text("Launch"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
