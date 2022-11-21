import 'package:flutter/material.dart';
import 'package:mp_tugas10/form_screen.dart';
import 'form_menulogin.dart';

class HomeScreen extends StatefulWidget {
  static const String routes = 'HomeScreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(253, 254, 255, 1),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('FROM LOGIN & REGISTER'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.all(10),
                width: 600,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.network(
                  "https://asset.kompas.com/crops/8ARjWiHBUPxRhyUmo7kkcUPZWzk=/0x0:1000x667/750x500/data/photo/2018/08/07/198576889.jpg",
                )),
            Column(
              children: [
                Text('WELCOME',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
                Text('',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 40)),
                Text("Don't have an account? Sign UP Now"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 176, 189, 219),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 20,
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const FormScreen();
                      }));
                    },
                    child: const Text('Login'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 20, 70, 104),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 20,
                      ),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const Signup();
                      }));
                    },
                    child: const Text('Register'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}