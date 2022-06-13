import 'dart:async';
import 'package:app_dna_oficial/Models/botoes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocalizacaoCHA5 extends StatefulWidget {
  const LocalizacaoCHA5({Key? key}) : super(key: key);

  @override
  State<LocalizacaoCHA5> createState() => _LocalizacaoCHA5State();
}

class _LocalizacaoCHA5State extends State<LocalizacaoCHA5> {
  Completer<GoogleMapController> _controller = Completer();
  Set<Marker> _marcador = {};

  _carregarMarcador() {
    Set<Marker> marcadorLocal = {};

    Marker marcadorPDL = Marker(
        markerId: MarkerId("Chácaras Amazonas"),
        position: LatLng(-2.90456, -59.95328),
        infoWindow: InfoWindow(title: "Chácaras Amazonas"),
        //icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange)
        onTap: () {});

    marcadorLocal.add(marcadorPDL);

    setState(() {
      _marcador = marcadorLocal;
    });
  }

  @override
  void initState() {
    super.initState();
    _carregarMarcador();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
              padding: EdgeInsets.only(top: 132),
              child: Image.asset(
                "assets/localizacao.png",
                height: 76,
              )),

          Padding(
            padding: EdgeInsets.only(top: 36),
            child: Container(
              height: 488,
              child: GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition:
                CameraPosition(target: LatLng(-2.90188, -59.95341), zoom: 16),
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
                markers: _marcador,
                zoomGesturesEnabled: true,
                  gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>[
                    new Factory<OneSequenceGestureRecognizer>(() => new EagerGestureRecognizer(),),
                  ].toSet(),
              ),
            ),
          ),

          //BOTOES

          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BotaoMapa(),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: BotaoObra(double.maxFinite),
                  ),
                ]),
          )
        ]);
  }
}


