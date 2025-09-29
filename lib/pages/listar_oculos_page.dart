import 'package:flutter/material.dart';
import 'package:projarly2/domain/oculos.dart';
import 'package:projarly2/domain/oculos_dao.dart';
import 'package:projarly2/widgets/oculos_widget.dart';
import 'package:projarly2/widgets/textFormField_widget.dart';


class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});


  @override
  State<ExplorePage> createState() => _ExplorePageState();
}


class _ExplorePageState extends State<ExplorePage> {
  List<Oculos> listarOculos = [];


  @override
  void initState() {
    super.initState();
    loadData();
  }




  loadData() async {
    listarOculos = await OculosDao().listarOculos();
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all( 3.0),
      child: ListView.builder(
        itemCount: listarOculos.length,
        itemBuilder: (context, i) {
          return OculosWidget(oculos: listarOculos[i], id: i);
        },
      ),
    );
  }
}
