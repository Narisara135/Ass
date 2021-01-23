import 'package:flutter/material.dart';
import 'package:pageroute/screens/loginpage.dart';
import 'package:pageroute/screens/registerPage.dart';

class Myfirstpage extends StatefulWidget {
  @override
  _MyfirstpageState createState() => _MyfirstpageState();
}

class _MyfirstpageState extends State<Myfirstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: SafeArea(
            child: Column(
              children: [
                ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    width: double.infinity,
                    height: 120,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.blue[800],
                        Colors.black26,
                      ]),
                    ),
                  ),
                ),
                Image.asset("img/overshop.png", height: 210, width: 210),
                // ช่องห่างระว่างข่างบน
                SizedBox(
                  height: 10,
                ),
                Text('ช้อปสินค้าเบ็ดเตล็ด'),
                Text('กว่า 100 รายการ'),
                Text('ในราคาที่คุณต้องห้ามพลาด'),
                // ช่องห่างระว่างข่างบน
                SizedBox(
                  height: 50,
                ),

                // ช่องห่างระว่างข่างบน
                SizedBox(
                  height: 7,
                ),

                new SizedBox(
                  width: 200.0,
                  height: 45.0,
                  child: new RaisedButton(
                    child:
                        Text('สมัครสมาชิก', style: TextStyle(fontSize: 25.0)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterPage(),
                          ));
                    },
                  ),
                ),
                // ช่องห่างระว่างข่างบน
                SizedBox(
                  height: 7,
                ),

                new SizedBox(
                  width: 200.0,
                  height: 45.0,
                  child: new RaisedButton(
                    child: new Text(
                      'เข้าสู่ระบบ',
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Secondpage(),
                          ));
                    },
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path(); //เริ่มต้น (0,0)

    // LINETO วาดเส้นตรงจาก (0,0) เป็น (0, H*0.75)
    path.lineTo(0, size.height * 0.70);
    path.quadraticBezierTo(
        size.width / 2, size.height * 0.10, size.width, size.height * 0.70);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
