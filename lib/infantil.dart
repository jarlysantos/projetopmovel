import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;

class MapInfantil extends StatefulWidget {
  const MapInfantil({super.key});

  @override
  State<MapInfantil> createState() => MapInfantilState();
}

class MapInfantilState extends State<MapInfantil> {
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition posInicial = CameraPosition(
    target: LatLng(-23.5505, -46.6333),
    zoom: 14.5,
  );

  final Set<Marker> markers = {};

  @override
  void initState() {
    super.initState();
    buscar();
  }

  Future<void> buscar() async {
    const apiKey = 'SUA_API_KEY';

    final url =
        'https://maps.googleapis.com/maps/api/place/nearbysearch/json'
        '?location=${posInicial.target.latitude},${posInicial.target.longitude}'
        '&radius=4000'
        '&keyword=óculos infantis'
        '&key=$apiKey';

    final r = await http.get(Uri.parse(url));
    final data = json.decode(r.body);

    if (data['results'] != null) {
      for (var l in data['results']) {
        final pos = LatLng(
          l['geometry']['location']['lat'],
          l['geometry']['location']['lng'],
        );

        markers.add(
          Marker(
            markerId: MarkerId(l['place_id']),
            position: pos,
            infoWindow: InfoWindow(
              title: l['name'],
              snippet: l['vicinity'],
            ),
          ),
        );
      }
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: posInicial,
        markers: markers,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _irParaLojaMaisProxima,
        label: const Text('Loja mais próxima'),
        icon: const Icon(Icons.store),
      ),
    );
  }

  Future<void> _irParaLojaMaisProxima() async {
    if (markers.isEmpty) return;

    final primeiro = markers.first.position;
    final GoogleMapController controller = await _controller.future;

    await controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: primeiro,
          zoom: 17,
        ),
      ),
    );
  }
}
