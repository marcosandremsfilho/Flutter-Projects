import 'package:flutter/material.dart';
import './login.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/UAIRRIOR.png',
                    scale: 13, height: 100),
                const TextField(
                  decoration: InputDecoration(
                      hintText: 'Email', prefixIcon: Icon(Icons.email)),
                ),
                const SizedBox(height: 10),
                const TextField(
                  decoration: InputDecoration(
                      hintText: 'Senha', prefixIcon: Icon(Icons.lock)),
                ),
                const SizedBox(height: 10),
                const TextField(
                  decoration: InputDecoration(
                      hintText: 'Repetir Senha', prefixIcon: Icon(Icons.lock)),
                ),
                Row(
                  children: [
                    const SizedBox(
                      height: 10,
                      width: 70,
                    ),
                    SizedBox(
                      width: 100,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {},
                          child: const Text('Register')),
                    ),
                    const SizedBox(
                      height: 10,
                      width: 10,
                    ),
                    SizedBox(
                      width: 100,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Login()));
                          },
                          child: const Text('Cancel')),
                    ),
                  ],
                )
              ],
            )));
  }
}
