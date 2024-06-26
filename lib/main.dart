import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: UserPanel(),
    ));

class UserPanel extends StatefulWidget {
  const UserPanel({super.key});

  @override
  State<UserPanel> createState() => _UserPanelState();
}

class _UserPanelState extends State<UserPanel> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 32, 21, 88),
      appBar: AppBar(
        title: const Text('itProger User',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
        centerTitle: true,
        backgroundColor: Colors.black45,
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const Padding(padding: EdgeInsets.only(top: 30)),
                const Text(
                  'John Doe',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 10)),
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/picture1.jpeg'),
                  radius: 50,
                ),
                // ClipOval(
                //     child: SizedBox.fromSize(
                //   size: const Size.fromRadius(50),
                //   child: Image.asset('assets/picture1.jpeg'),
                // )),
                const Padding(padding: EdgeInsets.only(top: 10)),
                const Row(
                  children: [
                    Icon(
                      Icons.mail_outline,
                      size: 25,
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.only(left: 10)),
                    Text(
                      'admin@itproger.com',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 10)),
                Text(
                  'Count: $_count',
                  style: const TextStyle(color: Colors.white),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.ac_unit_rounded),
        backgroundColor: Colors.amber,
        onPressed: () {
          setState(() {
            _count++;
          });
        },
      ),
    );
  }
}
