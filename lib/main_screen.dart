import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/Vector.png',
                ),
              ),
            ),
            Spacer(),
            Text(
              'Задай вопрос',
              style: TextStyle(
                color: Color.fromRGBO(
                  223,
                  237,
                  255,
                  1,
                ),
                fontSize: 25,
                fontWeight: FontWeight.w600,
                fontFamily: 'Nunito',
              ),
            ),
            Spacer(
              flex: 4,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/image 1.png',
                ),
                Image.asset(
                  'assets/iside_circle.png',
                ),
                TextButton(
                  child: Text(
                    'НАЧАТЬ',
                    style: TextStyle(
                      color: Color(0xFFDFEDFF),
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Nunito',
                    ),
                  ),
                  onPressed: () {},
                )
              ],
            ),
            Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
