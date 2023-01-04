import 'package:flutter/material.dart';
import './login.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool teste(String pass, String confirmPass) {
    if (pass == confirmPass) {
      return true;
    }
    return false;
  }

  @override
  void initState() {
    emailController.text = '';
    passwordController.text = '';
    confirmPasswordController.text = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(20),
            child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/UAIRRIOR.png',
                        scale: 13, height: 100),
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                          labelText: 'Email', prefixIcon: Icon(Icons.email)),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      obscureText: true,
                      autocorrect: false,
                      controller: passwordController,
                      decoration: const InputDecoration(
                        labelText: 'Senha',
                        prefixIcon: Icon(Icons.lock),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                        obscureText: true,
                        autocorrect: false,
                        controller: confirmPasswordController,
                        decoration: const InputDecoration(
                            labelText: 'Repetir Senha',
                            prefixIcon: Icon(Icons.lock)),
                        validator: ((value) {
                          if (passwordController.text !=
                              confirmPasswordController.text) {
                            return 'Senhas não compativeis';
                          }
                          return null;
                        })),
                    Row(
                      children: [
                        const SizedBox(
                          height: 50,
                          width: 50,
                        ),
                        SizedBox(
                          width: 100,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                foregroundColor: Colors.white,
                              ),
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content: const Text(
                                        "Cadastro feito com sucesso"),
                                    backgroundColor: Colors.green,
                                  ));
                                } else {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content:
                                        const Text("Senhas não compatíveis"),
                                    backgroundColor: Colors.red,
                                  ));
                                }
                              },
                              child: const Text('Register')),
                        ),
                        const SizedBox(
                          height: 20,
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
                ))));
  }
}
