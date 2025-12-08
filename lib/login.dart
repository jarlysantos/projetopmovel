import 'package:flutter/material.dart';
import 'package:projarly2/register_page.dart';
import 'package:projarly2/telaInicial.dart';
import 'package:projarly2/db/userDao.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'db/prefs.dart';
import 'package:provider/provider.dart';
import 'package:projarly2/provider/profile_provider.dart';
import 'package:projarly2/model/user.dart';
import 'package:projarly2/api/user_api.dart';
import 'package:projarly2/db/shared_prefs.dart';
import 'package:projarly2/profile_page.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _loginState();
}

class _loginState extends State<Login> {

  TextEditingController usuarioController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  @override

  void initState() {
    super.initState();
    checkUserLogin();
  }


  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 220,
          backgroundColor: Color(0xFF214865),
          title: Center(
            child: Image.network(
              'https://caaam.org.br/wp-content/uploads/2023/03/WhatsApp-Image-2021-05-17-at-2.55.51-PM.jpeg',
              height: 220,
              width: 220,
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
                child: Text(
                  'Entrar na Loola Ótica',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF214865),
                  ),
                ),
              ),
              SizedBox(height: 70),
              TextField(
                controller: usuarioController,
                decoration: InputDecoration(
                  hintText: 'Usuário',
                ),
              ),
              TextField(
                controller: senhaController,
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
                onPressed: () => xxxxxx(),
                child: Text(
                  'Entrar',
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


  Future<void> xxxxxx() async {
    String user = usuarioController.text;
    String password = senhaController.text;

    User? usuario = await UserApi().login(user, password);
    if (usuario != null) {
      SharedPrefs().setUserId(usuario.id);

      ProfileProvider provider = context.read<ProfileProvider>();
      provider.setUser(usuario);

      print("Usuário autenticado com sucesso!");
      await SharedPrefs().setUserStatus(true);
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return const ProfilePage();
        },
      ),
      );

    } else {
      print('Usuario e/ou senha incorretos!');
    }
  }

  checkUserLogin() async {
    bool status = await SharedPrefs().getUserStatus();
    int id = await SharedPrefs().getUserId();
    User? usuario = await UserApi().findById(id);

    await Future.delayed(Duration(seconds: 3));

    if (status) {
      context.read<ProfileProvider>().setUser(usuario);
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return const ProfilePage();
        },
      ));

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

      void onPressedRegisterPage() {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return RegisterPage();
            },
          ),
        );
      }
    }
    }
  }

