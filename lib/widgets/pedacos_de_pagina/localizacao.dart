import 'dart:async';
import '../botoes/botao_abrir_no_maps.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../botoes/botao_obra.dart';

class Localizacao extends StatefulWidget {
  String markerId;
  double latitude;
  double longitude;
  double latCamera;
  double longCamera;

  Localizacao({
    required this.markerId,
    required this.latitude,
    required this.longitude,
    required this.latCamera,
    required this.longCamera,
  });

  @override
  State<Localizacao> createState() => _LocalizacaoState();
}

class _LocalizacaoState extends State<Localizacao> {


  final Completer<GoogleMapController> _controller = Completer();
  Set<Marker> _marcador = {};



  _carregarMarcador() {
    Set<Marker> marcadorLocal = {};

    Marker marcadorPDL = Marker(
        markerId:  MarkerId(widget.markerId),
        position:  LatLng(widget.latitude, widget.longitude),
        infoWindow:  InfoWindow(title: widget.markerId),
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
              padding: const EdgeInsets.only(top: 72),
              child: Image.asset(
                "assets/Localizacao/localizacao.png",
                height: 76,
              )),

          Padding(
            padding: const EdgeInsets.only(top: 36),
            child: SizedBox(
              height: 488,
              child: GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition:
                 CameraPosition(target: LatLng(widget.latCamera, widget.longCamera), zoom: 14),
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
                markers: _marcador,
                gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
                  Factory<OneSequenceGestureRecognizer>(() => EagerGestureRecognizer(),),
                },
              ),
            ),
          ),

          //BOTOES

          LayoutBuilder(builder: (context, constraint) {

            return Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const BotaoMapa(),
                    Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: BotaoObra(double.maxFinite)),
                  ]),
            );
          })
        ]);
  }
}
