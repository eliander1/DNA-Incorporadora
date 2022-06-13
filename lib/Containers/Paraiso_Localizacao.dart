import 'dart:async';
import 'package:app_dna_oficial/Models/botoes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocalizacaoPDL5 extends StatefulWidget {
  const LocalizacaoPDL5({Key? key}) : super(key: key);

  @override
  State<LocalizacaoPDL5> createState() => _LocalizacaoPDL5State();
}

class _LocalizacaoPDL5State extends State<LocalizacaoPDL5> {
  Completer<GoogleMapController> _controller = Completer();
  Set<Marker> _marcador = {};

  _carregarMarcador() {
    Set<Marker> marcadorLocal = {};

    Marker marcadorPDL = Marker(
        markerId: MarkerId("Paraiso Dos Lagos"),
        position: LatLng(-2.90188, -59.95341),
        infoWindow: InfoWindow(title: "Paraíso Dos Lagos"),
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
            padding: EdgeInsets.only(top: 72),
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
                  CameraPosition(target: LatLng(-2.90188, -59.95341), zoom: 14),
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
              markers: _marcador,
              gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>[
                new Factory<OneSequenceGestureRecognizer>(() => new EagerGestureRecognizer(),),
              ].toSet(),
            ),
          ),
        ),

        //BOTOES

        LayoutBuilder(builder: (context, constraint) {
          var largura = constraint.maxWidth;

          return Padding(
            padding: EdgeInsets.all(16),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BotaoMapa(),
                  Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: BotaoObra(double.maxFinite)),
                ]),
          );
        })
      ],
    );
  }
}
