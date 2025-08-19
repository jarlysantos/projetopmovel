import 'package:flutter/material.dart';
import 'package:projarly2/login.dart';
import 'package:projarly2/model/user.dart';
import 'package:projarly2/user_dao.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 220,
          backgroundColor: Color(0xFF214865),
          title: Center(
            child: Image.network(
              'https://caaam.org.br/wp-content/uploads/2023/03/WhatsApp-Image-2021-05-17-at-2.55.51-PM.jpeg',
              height: 220, width: 220,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text('Cadastre-se na Loola Ótica', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Color(0xFF214865),),),
              ),
              SizedBox(height: 70),
              TextField(
                controller: userController,
                decoration: InputDecoration(
                  hintText: 'Usuário',
                ),
              ),

              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  hintText: 'Senha',
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF214865),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8), // <-- Radius
                  ),
                ),

                onPressed: () => onPressed(),
                child: Text(
                  'Cadastrar',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> onPressed() async {
    String username = userController.text;
    String password = passwordController.text;

    User user = User(username, password);
    await UserDao().salvar(user);

    print('Usuario Cadastrado com sucesso!');
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Login(),
      ),
    );
  }

  OutlineInputBorder buildPasswordOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(8),
      ),
    );
  }

  OutlineInputBorder buildUserOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(8),
      ),
    );
  }
}