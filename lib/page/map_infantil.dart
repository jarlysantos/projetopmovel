import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;

class OculosInfantisMapPage extends StatefulWidget {
  final LatLng latLong;

  const OculosInfantisMapPage({
    super.key,
    required this.latLong,
  });

  @override
  State<OculosInfantisMapPage> createState() => _OculosInfantisMapPageState();
}

class _OculosInfantisMapPageState extends State<OculosInfantisMapPage> {
  final Completer<GoogleMapController> _controller = Completer<GoogleMapController>();
  final Set<Marker> markers = {};

  @override
  void initState() {
    super.initState();
    buscarOculosInfantis();
  }

  Future<void> buscarOculosInfantis() async {
    const apiKey = 'AIzaSyDv8Bw3VfZm8BkDyIs2PHd1LgR6h4lKpcQ';
    final url =
        'https://maps.googleapis.com/maps/api/place/nearbysearch/json'
        '?location=${widget.latLong.latitude},${widget.latLong.longitude}'
        '&radius=3500'
        '&keyword=óculos infantis'
        '&key=$apiKey';

    final resposta = await http.get(Uri.parse(url));
    final data = json.decode(resposta.body);

    if (data['results'] != null) {
      for (var local in data['results']) {
        final pos = LatLng(
          local['geometry']['location']['lat'],
          local['geometry']['location']['lng'],
        );

        markers.add(
          Marker(
            markerId: MarkerId(local['place_id']),
            position: pos,
            infoWindow: InfoWindow(
              title: local['name'],
              snippet: local['vicinity'],
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
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: widget.latLong,
          zoom: 14.5,
        ),
        markers: markers,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
