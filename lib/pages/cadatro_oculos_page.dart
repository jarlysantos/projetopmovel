


import 'package:flutter/material.dart';

import '../widgets/textFormField_widget.dart';

class CadatroOculosPage extends StatefulWidget {
  const CadatroOculosPage({super.key});


  @override
  State<CadatroOculosPage> createState() => _CadatroOculosPageState();
}


TextEditingController marcaController = TextEditingController();
TextEditingController nomeController = TextEditingController();
TextEditingController valorController = TextEditingController();
TextEditingController urlController = TextEditingController();


class _CadatroOculosPageState extends State<CadatroOculosPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              //spacing: 8.0,
              children: [
                Icon(
                  Icons.app_registration,
                  color: Colors.white,
                ),
                Text(
                  "Cadastro de Oculos",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            backgroundColor: Color(0xFF214865),
          ),
          body: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              //spacing: 16.0,
              children: [
                //  final String labelText;
                //   final String? hintText;
                //   final TextEditingController controller;
                //   final TextInputType keyboardType;
                //   final bool obscureText;
                //   final String? Function(String?)? validator;
                //   final IconData? prefixIcon;
                CustomTextFormField(
                  labelText: "Marca",
                  controller: marcaController,
                ),
                CustomTextFormField(
                  labelText: "Nome",
                  controller: nomeController,
                ),
                CustomTextFormField(
                  labelText: "Url Image",
                  controller: urlController,
                ),
                CustomTextFormField(
                  labelText: "Valor",
                  controller: valorController,
                  keyboardType: TextInputType.number,
                ),
                ElevatedButton.icon(
                  icon: Icon(Icons.check, color: Colors.white),
                  label: Text(
                    "Cadastrar",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                    backgroundColor: Color(0xFF214865),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    elevation: 4,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}



