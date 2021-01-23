import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String _email;
  String _nickname;
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
              Image.asset("img/login.png", height: 170, width: 170),
              // ช่องห่างระว่างข่างบน
              SizedBox(
                height: 5,
              ),
              Text('สมัครสมาชิก', style: TextStyle(fontSize: 25.0)),
              Text('(Register)', style: TextStyle(fontSize: 20.0)),
              // ช่องห่างระว่างข่างบน
              SizedBox(
                height: 48,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 200,
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        _nickname = value;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: 'ชื่อผู้ใช้ (Nickname)',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
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
                height: 5,
              ),
              RaisedButton(
                onPressed: () {
                  print(_nickname);
                  print(_email);
                  print(_password);
                },
                color: Colors.blue,
                child: Text(
                  'ยืนยัน',
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
