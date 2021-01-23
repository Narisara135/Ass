import 'package:flutter/material.dart';

class Secondpage extends StatefulWidget {
  @override
  _SecondpageState createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  String _email;
  String _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("img/login.png", height: 180, width: 180),
              // ช่องห่างระว่างข่างบน
              SizedBox(
                height: 5,
              ),
              Text('เข้าสู่ระบบ ', style: TextStyle(fontSize: 25.0)),
              Text('(Login)', style: TextStyle(fontSize: 20.0)),
              // ช่องห่างระว่างข่างบน
              SizedBox(
                height: 47,
              ),

              Padding(
                padding: const EdgeInsets.all(
                  8.0,
                ),
                child: Container(
                  width: 200,
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        _email = value;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: 'อีเมลล์ (Email)',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              // ช่องห่างระว่างข่างบน
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        _password = value;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: 'รหัสผ่าน (Password)',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),

              // ช่องห่างระว่างห่างบน
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                onPressed: () {
                  print(_email);
                  print(_password);
                },
                color: Colors.blue,
                child: Text(
                  'เข้าสู่ระบบ',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
